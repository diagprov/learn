#include <cstdio>
#include <iostream>
#include <stdexcept>

class RootBase {
public:
    RootBase() {
        std::printf("Create Base\n");
    }
    virtual void test() {
        std::printf("This is Base\n");
    } 
    virtual ~RootBase() {
        std::printf("Delete Base\n");
    }
};

class CLeft : public RootBase {
public:
    CLeft() {
        std::printf("Create Left\n");
    }
    virtual void test() override {
        std::printf("This is Left\n");
        throw new std::overflow_error("This overflowed!");
    }
    virtual ~CLeft() {
        std::printf("Delete Left\n");
    }
};

class CRight : public RootBase {
public:
    CRight() {
        std::printf("Create Right\n");
    }

    virtual void test() override {
        std::printf("This is Right\n");
        throw new std::underflow_error("This didn't overflow");
    }
    virtual ~CRight() {
        std::printf("Delete Right\n");
    }
};

class CBackTogether: public CLeft, public CRight {
public:
    CBackTogether() {
        std::printf("Create BackTogether\n");
    }

    virtual void test() override {
        std::printf("This is BackTogether\n");
        throw new std::logic_error("This isn't logical!");
    }
    virtual ~CBackTogether() {
        std::printf("Delete BackTogether\n");
    }
};

void use_classes() {

    CLeft* heap_left = new CBackTogether();
    CRight* heap_right = new CBackTogether();

    heap_left->test();
    heap_right->test();
   
    /* do some dynamic casting */
    CBackTogether* allyourbase_left = dynamic_cast<CBackTogether*>(heap_left);
    CBackTogether* allyourbase_right = dynamic_cast<CBackTogether*>(heap_right);
    RootBase* allyourbase_upup = heap_left;
    if ( allyourbase_left != nullptr || 
         allyourbase_right != nullptr || 
         allyourbase_upup != nullptr ) {
        try {
        allyourbase_left->test();
        allyourbase_right->test();
        allyourbase_upup->test();
        }
        catch (std::overflow_error& e) {
            std::cout << e.what() << std::endl;
        }
        catch (std::runtime_error& e) {
            std::cout << e.what() << std::endl;
        }
    } else {
        std::printf("This should work.\n");
    }

    delete heap_left;
    delete heap_right;
}


int main(int argc, char** argv) {

    try {
    use_classes();
    } catch (std::exception& e) {
        std::cout << e.what() << std::endl;
    }
}
