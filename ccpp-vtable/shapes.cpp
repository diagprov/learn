
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <iostream>

#include <numbers> // C++20

// This is to mimmick a little bit python
class Object {
protected:
    char const* obj_name;

    virtual void set_name(const char* name) {
        // TODO: add an exception if name > some value! :P
        size_t len = std::strlen(name);
        obj_name = (char*)std::calloc(len, sizeof(char));
        std::strcpy(const_cast<char*>(obj_name), name);
    };

    // no direct construction, be awkward
    Object() {};
public:


    virtual ~Object() {
        if ( obj_name) {
            delete obj_name;
            obj_name = nullptr;
        }
    }

    const char* const name() {
        return obj_name;
    }
};

// A Mixin, which is useful to mix things up.
class RegularNGon { 
protected:
    int n;
public:
    RegularNGon(int N) : n(N) {
    }

    virtual ~RegularNGon() {
    }
};

class Shape : public Object
{
public:
    Shape() {
        set_name("Shape");
    }

    virtual ~Shape() {
    }
    virtual double area() = 0;
    virtual double circumference() = 0;
};

class Parallelogram : public Shape {
protected:
    int b; int h;
public:
    Parallelogram(int base, int height) : b(base), h(height) {
        set_name("Parallelogram");
    }

    virtual ~Parallelogram() {

    }

    virtual double area() {
        return b*h;
    }

    virtual double circumference() {
        return 2*(b+h);
    }
};

class Rectangle : public Parallelogram {
public:
    // We are also a parallelogram, instantiate the protected instance variables there.
    Rectangle(int base, int height) : Parallelogram(base,height) {
        set_name("Rectangle");
    }

    virtual ~Rectangle() {
    }

    // Rely on the parent class' area method.
};

class Square: public Rectangle, public RegularNGon {
public:
    // We are also a parallelogram, instantiate the protected instance variables there.
    Square(int length) : Rectangle(length, length), RegularNGon(4) {
        this->set_name("Square");
    }

    virtual ~Square() {
    }

    virtual double circumference() {
        return this->n * b;
    }
};

class Triangle : public Shape {
private:
    int b; int h;
public:
    Triangle(int base, int height) : b(base), h(height) {
        set_name("Triangle");
    }
    virtual ~Triangle() {
    }
    virtual double area() {
        return (0.5)*b*h;
    }
    virtual double circumference() {
        return b+h+(std::sqrt(b^2 + h^2));
    };
};

class Circle : public Shape {
private:
    int r;
public:
    Circle(int radius) : r(radius) {
        set_name("Circle");
    }
    virtual ~Circle() {
    }
    virtual double area() {
        return (1/2)*(r^2)*(std::numbers::pi);
    }
    virtual double circumference() {
        return 2*r*(std::numbers::pi);
    }
    
};

int main(int argc, char** argv) {

    Shape* s = nullptr;

    if ( argc != 2 ) {
        std::printf("Not enough arguments. Specify one letter.\n");
        return -1;
    }

    if ( std::strlen(argv[1]) != 1 ) {
        std::printf("Please pick a single letter argument.\n");
        return -1;
    }

    switch(argv[1][0]) {
    case 'C':
        s = new Circle(4);
        break;
    case 'R':
        s = new Rectangle(6,10);
        break;
    case 'P':
        s = new Parallelogram(5,9);
        break;
    case 'S':
        s = new Square(10);
        break;
    case 'T':
        s = new Triangle(5,9);
        break;
    default:
        std::printf("Not a valid shape type. Exiting");
        return -1;
    
    };

    const char* const name = s->name();
    double area = s->area();
    double circ = s->circumference();
    std::printf("Area of %s is %f, Circumference of shape is %f\n", name, area, circ);

    if (s) {
        delete s; s = nullptr;
    }

    return 0;
}
