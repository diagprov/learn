
#include <stdint.h>
#include <iostream>

class BaseNoVirtual {
    public:
        BaseNoVirtual() {}

        void method() {
            std::cout << "BaseNoVirtual" << std::endl;
        }
};

class DerivedNoVirtual : public BaseNoVirtual {
    public:
        DerivedNoVirtual() {}

        void method() {
            std::cout << "DerivedNoVirtual" << std::endl;
        }

};

class BaseVirtual {
    public:
        BaseVirtual() {}

        virtual void method() 
        {
            std::cout << "BaseVirtual" << std::endl;
        }

        virtual bool isDerived() {
            return false;
        }
};

class DerivedVirtual : public BaseVirtual {

    std::string s;

    public:
        DerivedVirtual(std::string msg) : s(msg) {}

        virtual void method() 
        {
            std::cout << "DerivedVirtual" << std::endl;
        }

        virtual bool isDerived() {
            return true;
        }

        void test() {
            std::cout << "Display a message: " << s << std::endl;
        }
};

class OtherObject : public BaseVirtual {
    int x;
public:
    OtherObject(int y) : x(y) {};

    virtual int getx() {
        return x;
    }

    virtual void method() {
        std::cout << "OtherObject x:" << x << std::endl;
    }
};


void call_the_method(BaseVirtual* vv) {

    // Here we demonstrate the difference between static and dynamic cast.
    // If an OtherObject is supplied, then p will produce an 
    // object that is actually unsafe.
    DerivedVirtual* p = static_cast<DerivedVirtual*>(vv);
    DerivedVirtual* d = dynamic_cast<DerivedVirtual*>(vv);
    std::cout << "CALL_THE_METHOD" << std::endl;
    std::cout << "DV: " << (uintptr_t)d << std::endl;
    p->method();
    std::cout << "Is the thing derived? " << p->isDerived() << std::endl;
    // this causes a crash:
    p->test();
    d->test();
}


int main(int argc, char** argv) {

    OtherObject o(2);
    DerivedNoVirtual dnv;
    dnv.method();
    BaseNoVirtual* p_bnv = static_cast<BaseNoVirtual*>(&dnv);
    p_bnv->method();
    DerivedNoVirtual* p_dnv = static_cast<DerivedNoVirtual*>(p_bnv);
    p_dnv->method();

    std::string message = "hello, world!";
    DerivedVirtual dv(message);
    dv.method();
    BaseVirtual* p_bv = static_cast<BaseVirtual*>(&dv);
    p_bv->method();
    DerivedVirtual* p_dv = static_cast<DerivedVirtual*>(p_bv);
    p_dv->method();

    BaseVirtual* vv;
    if ( argc % 2 == 0 ) {
        std::cout << "Passing Derived" << std::endl;
        vv = p_bv;
    } else {
        std::cout << "Passing OtherObject" << std::endl;
        vv = static_cast<BaseVirtual*>(&o);
    }
    call_the_method(vv);
}
