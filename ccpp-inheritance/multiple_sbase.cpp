#include <cstdio>

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
class CLeftBase : public RootBase {
public:
    CLeftBase() {
        std::printf("Create LeftB\n");
    }
    virtual void test() override {
        std::printf("This is LeftB\n");
    }
    virtual ~CLeftBase() {
        std::printf("Delete LeftB\n");
    }
};

class CLeft : public CLeftBase {
public:
    CLeft() {
        std::printf("Create Left\n");
    }
    virtual void test() override {
        std::printf("This is Left\n");
    }
    virtual ~CLeft() {
        std::printf("Delete Left\n");
    }
};
class CRightBase : public RootBase {
public:
    CRightBase() {
        std::printf("Create RightB\n");
    }

    virtual void test() override {
        std::printf("This is RightB\n");
    }
    virtual ~CRightBase() {
        std::printf("Delete RightB\n");
    }
};

class CRight : public CRightBase {
public:
    CRight() {
        std::printf("Create Right\n");
    }

    virtual void test() override {
        std::printf("This is Right\n");
    }
    virtual ~CRight() {
        std::printf("Delete Right\n");
    }
};

void use_classes() {

    CLeft stack_left;
    CRight stack_right;

    CLeft* heap_left = new CLeft();
    CRight* heap_right = new CRight();

    stack_left.test();
    stack_right.test();
    heap_left->test();
    heap_right->test();
   
    CLeftBase* allyourbase_left = heap_left;
    allyourbase_left->test();
    /* do some dynamic casting */
    CLeft* heap_left_again = dynamic_cast<CLeft*>(allyourbase_left);
    if ( heap_left_again != nullptr ) {
        heap_left_again->test();
    } else {
        std::printf("This should work.\n");
    }

    delete heap_left;
    delete heap_right;
}


int main(int argc, char** argv) {

    use_classes();
}
