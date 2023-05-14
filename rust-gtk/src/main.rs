
use std::boxed::Box;

use gtk4::prelude::*;
use gtk4::{ApplicationWindow, Builder};
use gtk4::gio::MenuModel;
use gtk4::gio::SimpleAction;
use gtk4::glib;
// If using plain gtk...:
// use gtk4::Application as Application;
use adw::Application as Application;

const APPLICATION_ID : &str = "ch.vennard.devel.linux-gtk.example"; 
const MENU_DEFINITION : &str = r#"<?xml version="1.0" encoding="UTF-8"?>
<interface>
  <menu id='menubar'>
    <submenu>
      <attribute name='label' translatable='yes'>_File</attribute>
      <section>
      <item>
        <attribute name='label' translatable='yes'>_New</attribute>
        <attribute name='action'>app.new</attribute>
      </item>
      <item>
        <attribute name='label' translatable='yes'>_Open</attribute>
        <attribute name='action'>app.open</attribute>
      </item>
      </section>
      <section>
      <item>
        <attribute name='label' translatable='yes'>_Save</attribute>
        <attribute name='action'>app.save</attribute>
      </item>
      </section>
      <section>
      <item>
        <attribute name='label' translatable='yes'>E_xit</attribute>
        <attribute name='action'>app.quit</attribute>
      </item>
      </section>
    </submenu>
    <submenu>
      <attribute name='label' translatable='yes'>_Edit</attribute>
      <item>
        <attribute name='label' translatable='yes'>_Copy</attribute>
        <attribute name='action'>edit.copy</attribute>
      </item>
      <item>
        <attribute name='label' translatable='yes'>_Paste</attribute>
        <attribute name='action'>edit.paste</attribute>
      </item>
    </submenu>
    <submenu>
      <attribute name='label' translatable='yes'>_Help</attribute>
      <item>
        <attribute name='label' translatable='yes'>_About</attribute>
        <attribute name='action'>app.about</attribute>
      </item>
    </submenu>
  </menu>
</interface>
"#;

// was gtk4::Application
fn ui_construct(application: &Application) {
    let builder = Builder::from_string(MENU_DEFINITION);
    // let objects = builder.objects();
    // println!("{:?}", objects);
    let menu : Option<MenuModel> = builder.object("menubar");
    let mainmenu = menu.unwrap();
    application.set_menubar(Some(&mainmenu));

    let window = ApplicationWindow::builder()
        .application(application)
        .show_menubar(true)
        .resizable(true)
        .build();

    window.set_title(Some("Manual Menu in Gtk4"));
    window.set_default_size(500, 500);

    let label = gtk4::Label::builder()
        .label("GTK4, LibAdwaita, Menus and Rust!")
        .build();
    window.set_child(Some(&label));
    ui_menu_actions(&application);
    window.present();
}

fn ui_menu_actions(application: &Application) {
    /* Create menu actions */
    

    // identifiers for application-level actions
    // live under app, so this becomes app.quit
    let action_file_quit = Box::new(SimpleAction::new("quit", None));
    action_file_quit.connect_activate(glib::clone!(@weak application => move 
            |_action, _parameter| {
                application.quit();
            }),
    );

    // here we can set it globally.
    application.set_accels_for_action("app.quit", &["<Primary>Q"]);
    application.add_action(action_file_quit.as_ref());
}

fn main() {
    let application = Application::builder()
        .application_id(APPLICATION_ID)
        .build();
    application.connect_activate(ui_construct);

    application.run();
}
