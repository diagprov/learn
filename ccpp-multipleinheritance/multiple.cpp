#include <cstdio>

class RootBase {
public:
    virtual void test();
    virtual ~RootBase() {
        std::printf("Delete base\n");
    }
};
class CLeft : public RootBase {
public:
    virtual ~CLeft() {
        std::printf("Delete cleft\n");
    }
};
class CRight : public RootBase {
public:
    virtual ~CRight() {
        std::printf("Delete right\n");
    }
};

void use_classes() {

    CLeft stack_left;
    CRight stack_right;

    CLeft* heap_left = new CLeft();
    CRight* heap_right = new CRight();

    delete heap_left;
    delete heap_right;
}
