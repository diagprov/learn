
use std::ptr::NonNull;
use std::marker::{PhantomData, Sized};
use std::ffi::c_void;

#[repr(C)]
pub struct VSlice<'a, T: Sized> {
    len: usize,
    ptr: NonNull<T>,
    phantom: PhantomData<&'a [T]>,
}

impl<'a, T> VSlice<'a, T> {

    fn from_slice(slice: Box<[T]>) -> VSlice<'a, T> {
        let slen = slice.len();
        VSlice { 
            ptr : unsafe { std::ptr::NonNull::new_unchecked(Box::into_raw(slice) as *mut T) }, 
            len: slen, 
            phantom: PhantomData 
        }
    }
    
    fn as_box(&self) -> Box<[T]> {
        let slice = self.as_slice_mut();
        //let bx : Box<[T]> = unsafe { std::boxed::Box::from_raw(self.ptr.as_ptr() as *mut _ as *mut c_void) };
        let bx : Box<[T]> = unsafe { std::boxed::Box::from_slice(slice) };
        
        return bx;
    }

    fn as_slice(&self) -> & [T] {
        let slice = unsafe { std::slice::from_raw_parts(self.ptr.as_ptr(), self.len) };
        slice
    }

    fn as_slice_mut(&self) -> &mut [T] {
        let slice = unsafe { std::slice::from_raw_parts_mut(self.ptr.as_ptr(), self.len) };
        slice
    }
}

#[repr(C)]
pub struct InputData {
    a: i32,
    b: i32,
    sum: i32,
}

#[no_mangle]
pub extern "C" fn rust_adder(id: *mut InputData) {
    let mut ix : Box<InputData> = unsafe { Box::from_raw(id) };
    ix.sum = ix.a + ix.b;
}


//static mut aslice : [u8;6] = [1, 2, 3, 4, 5, 6];


#[no_mangle]
pub extern "C" fn get_a_slice() -> VSlice<'static, u8> {

    let aslice : Box<[u8]> = Box::new([1, 2, 3, 4, 5, 6]);
    //let vsli = VSlice{ ptr : std::ptr::NonNull::new_unchecked(&mut aslice as *mut u8), len: aslice.len(), phantom: PhantomData };
    let vsli = VSlice::from_slice(aslice);
    return vsli;
}

/*
#[no_mangle]
pub extern "C" fn print_a_slice() {
    let slx = 
}*/
