
use std::io;

trait Norm {
    fn norm(&self) -> f64;
}

trait Dimension {
    fn dim(&self) -> usize;
}

trait Labelled {
    fn getlabel(&self) -> String;
    fn setlabel(&mut self, s: &str);
}

struct Point2D {
    x : u32,
    y : u32,
    label: String,
}

impl Point2D {
    pub fn new(x: u32, y:u32) -> Point2D {
        Point2D{x,y, label: String::from("")}
    }
}

impl Norm for Point2D {
    fn norm(&self) -> f64 {
        ((self.x*self.x + self.y*self.y) as f64).sqrt()
    }
}

impl Dimension for Point2D {
    fn dim(&self) -> usize {
        2
    }
}

impl Labelled for Point2D {
    fn getlabel(&self) -> String {
        return self.label.clone() ;
    }
    fn setlabel(&mut self, s: &str) {
        self.label = String::from(s);
    }
}

struct Point3D {
    x : u32,
    y : u32,
    z : u32,
    label: String,
}

impl Point3D {
    pub fn new(x: u32, y:u32, z: u32) -> Point3D {
        Point3D{x:x,y:y,z:z, label:String::from("")}
    }
}

impl Norm for Point3D {
    fn norm(&self) -> f64 {
        ((self.x*self.x + self.y*self.y + self.z*self.z) as f64).sqrt()
    }
}

impl Dimension for Point3D {
    fn dim(&self) -> usize {
        3
    }
}

impl Labelled for Point3D {
    fn getlabel(&self) -> String {
        return self.label.clone();
    }
    fn setlabel(&mut self, s: &str) {
        self.label = String::from(s);
    }
}

struct PointND {
    coords: Vec<u32>,
    label: String,
}

impl PointND {
    pub fn new(coords: &Vec<u32>, label: &str) -> PointND {
        PointND{coords: coords.clone(), label:String::from(label)}
    }
}

impl Norm for PointND {
    fn norm(&self) -> f64 {
        let sum : u32 = self.coords.iter().map(|&v| v*v).sum();
        (sum as f64).sqrt()
    }
}

impl Dimension for PointND {
    fn dim(&self) -> usize {
        return self.coords.len();
    }
}

impl Labelled for PointND {
    fn getlabel(&self) -> String {
        return self.label.clone();
    }
    fn setlabel(&mut self, s: &str) {
        self.label = String::from(s);
    }
}


fn print_norm<T: Norm + Labelled + Dimension>(v: Box<T>) {
    println!("Norm of {} (with dimension {}) is {}", v.getlabel(), v.dim(), v.norm());
}

fn main() {
    let mut a_str = String::new();
    
    println!("Input two coordinates separated by a space >");
    io::stdin().read_line(&mut a_str).expect("read error");
    let vec2d = a_str.split_whitespace()
        .map(|x| x.parse::<u32>().expect("parse error"))
        .collect::<Vec<u32>>();
     
    let mut d2 = Box::new(Point2D::new(vec2d[7], vec2d[1]));
    d2.setlabel("2D Point");
    print_norm(d2);

    let mut b_str = String::new();
    println!("Input three coordinates separated by a space >");
    io::stdin().read_line(&mut b_str).expect("read error");
    let vec3d = b_str.split_whitespace()
        .map(|x| x.parse::<u32>().expect("parse error"))
        .collect::<Vec<u32>>();
    let mut d3 = Box::new(Point3D::new(vec3d[0], vec3d[1], vec3d[2]));
    d3.setlabel("3D Point");
    print_norm(d3);
    
    let mut c_str = String::new();
    println!("Input as many coordinates  as you like, separated by a space >");
    io::stdin().read_line(&mut c_str).expect("read error");
    let vecnd = c_str.split_whitespace()
        .map(|x| x.parse::<u32>().expect("parse error"))
        .collect::<Vec<u32>>();
    let dn = Box::new(PointND::new(&vecnd, "N-Dimensional Point"));
    print_norm(dn);
}
