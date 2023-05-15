

#![windows_subsystem = "windows"]
use std::ffi::c_void;
use std::ptr::{null, null_mut};
use widestring::{u16cstr, U16CStr, U16CString, U16String};
use windows::{
    core::*, Win32::Foundation::*, 
    Win32::System::LibraryLoader::GetModuleHandleW, Win32::UI::WindowsAndMessaging::*, Win32::UI::Controls::TDM_SET_BUTTON_ELEVATION_REQUIRED_STATE,
    Win32::Graphics::Gdi::{ValidateRect, CreateFontIndirectW, HFONT, HBRUSH, UpdateWindow, DeleteObject},
};

macro_rules! wstring {

    ($str:expr) => {
        PCWSTR(u16cstr!($str).as_ptr())
    }
}

pub unsafe extern "system" fn enum_child_proc(hwnd: HWND, lparam: LPARAM) -> BOOL
{
    let hf_default : HFONT = HFONT(lparam.0);
    SendMessageW(hwnd, WM_SETFONT, WPARAM(hf_default.0 as usize), LPARAM(1));
    BOOL(1)
}


extern "system" fn wndproc(hwnd: HWND, message: u32, wparam: WPARAM, lparam: LPARAM) -> LRESULT {
    unsafe {
        match message {
            WM_CREATE => {
                init_interface(hwnd);
                center_window(hwnd);
            }
            WM_CLOSE => {
                DestroyWindow(hwnd);
            }
            WM_PAINT => {
            }
            WM_DESTROY => {
                PostQuitMessage(0);
            }
            WM_COMMAND => {
                match wparam.0 {
                    101 => {
                        MessageBoxW(
                        hwnd,
                        wstring!("You clicked the button"),
                        wstring!("MessageBox"),
                        MESSAGEBOX_STYLE(0),
                        );
                    },
                    _ => ()
                };
                
            }
            _ => (),
        };
        return DefWindowProcW(hwnd, message, wparam, lparam);
    }
}

fn messageloop(_hwnd: HWND) -> WPARAM {
    unsafe {
        let mut message = MSG::default();

        
        while GetMessageW(&mut message, None, 0, 0).as_bool() {
            TranslateMessage(&mut message);
            DispatchMessageW(&mut message);
        } 
        
        return message.wParam;
    }
}

fn center_window(hwnd: HWND) {

    unsafe {
        let mut rc : RECT = Default::default();
        
        GetWindowRect(hwnd, &mut rc);
        let win_w = rc.right - rc.left;
        let win_h = rc.bottom - rc.top;

        let screen_w = GetSystemMetrics(SM_CXSCREEN);
        let screen_h = GetSystemMetrics(SM_CYSCREEN);
        
        SetWindowPos(hwnd, HWND_TOP, (screen_w - win_w)/2, 
            (screen_h - win_h)/2, 0, 0, SWP_NOSIZE);

    }
}

fn create_main_windows(name: PCWSTR, title: PCWSTR) -> std::result::Result<HWND, ()> {
    
    unsafe {
        /*let window_name_s = U16CString::from_str_truncate(window_name);
        let window_name_u = window_name_s.as_ucstr();
        let window_title_s = U16CString::from_str_truncate(window_title);
        let window_title_u = window_title_s.as_ucstr();

        let name : PCWSTR = PCWSTR(window_name_u.as_ptr());
        let title : PCWSTR = PCWSTR(window_title_u.as_ptr());*/
        // Get handle to the file used to create the calling process
        let hinstance = GetModuleHandleW(None).unwrap();

        // Create and register window class
        let wnd_class = WNDCLASSEXW {
            cbSize: std::mem::size_of::<WNDCLASSEXW>() as u32,
            style: CS_HREDRAW | CS_VREDRAW,
            lpfnWndProc: Some(wndproc),
            cbClsExtra: 0,
            cbWndExtra: 0,
            hInstance: hinstance,
            hIcon: LoadIconW(None, IDI_APPLICATION).unwrap(),
            hCursor: LoadCursorW(None, IDC_ARROW).unwrap(),
            hbrBackground: HBRUSH(16),
            lpszMenuName: PCWSTR(null()),
            lpszClassName: name,
            hIconSm: LoadIconW(None, IDI_APPLICATION).unwrap(),
        };

        // Register window class
        if RegisterClassExW(&wnd_class) == 0 {
            MessageBoxW(
                None,
                wstring!("Window Registration Failed!"),
                wstring!("Error"),
                MB_ICONEXCLAMATION | MB_OK,
            );
            return Err(());
        };


        let handle = CreateWindowExW(
            WINDOW_EX_STYLE(0),
            name,
            title,
            WS_OVERLAPPEDWINDOW | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_VISIBLE,
            CW_USEDEFAULT,
            CW_USEDEFAULT,
            366,
            400,
            None,
            None,
            hinstance,
            None,
        );

        Ok(handle)
    }
}


fn init_interface(hwnd: HWND) {

    unsafe {
        
        CreateWindowExW(
            WINDOW_EX_STYLE(0),
            wstring!("Button"),
            wstring!("Test button"),
            WS_CHILD | WS_VISIBLE,
            10,  // x
            10, // y
            148,
            32,
            hwnd,
            HMENU(101), // ID = 101
            None,
            None,
        );

        let btnElevation = CreateWindowExW(
            WINDOW_EX_STYLE(0),
            wstring!("Button"),
            wstring!("Elevation button"),
            WS_CHILD | WS_VISIBLE,
            10,  // x
            50, // y
            168,
            42,
            hwnd,
            HMENU(102), // ID = 101
            None,
            None,
        );

        let hwndCombo = CreateWindowExW(WINDOW_EX_STYLE(0),
                    wstring!("Combobox"), 
                    None, 
                    WS_CHILD | WS_VISIBLE | WINDOW_STYLE(CBS_DROPDOWN as u32),
                    10,
                    110,
                    168,
                    32,
                    hwnd,
                    HMENU(103),
                    None,
                    None);
        SetWindowTextW(hwndCombo, wstring!("One"));
        SendMessageW(btnElevation, TDM_SET_BUTTON_ELEVATION_REQUIRED_STATE.0 as u32, 
            WPARAM(btnElevation.0 as usize), LPARAM(0));
        SendMessageW(hwndCombo, CB_ADDSTRING, WPARAM(0), LPARAM(wstring!("One").0 as isize));
        SendMessageW(hwndCombo, CB_ADDSTRING, WPARAM(0), LPARAM(wstring!("Two").0 as isize));
        SendMessageW(hwndCombo, CB_ADDSTRING, WPARAM(0), LPARAM(wstring!("Three").0 as isize));
    }
}

fn main() -> Result<()> {
    let mut ncm : NONCLIENTMETRICSW = Default::default();
    let mut hf_default : HFONT = Default::default();
    let ptrncm : *mut NONCLIENTMETRICSW = &mut ncm;
    unsafe {
        SystemParametersInfoW(SPI_GETNONCLIENTMETRICS, 
            std::mem::size_of::<NONCLIENTMETRICSW>() as u32, 
            Some(ptrncm as *mut c_void), SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(0));
        
        hf_default = CreateFontIndirectW(&ncm.lfMessageFont);
    }

    let hwnd = create_main_windows(wstring!("rust_main_window"), wstring!("Rust Main Window")).unwrap();
    unsafe {
        ShowWindow(hwnd, SW_SHOW);
        EnumChildWindows(hwnd, Some(enum_child_proc), LPARAM(hf_default.0));
        UpdateWindow(hwnd);

    }
    messageloop(hwnd);
    unsafe {
        DeleteObject(hf_default);
    }
    Ok(())
}

