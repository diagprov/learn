
#include <complex>
#include <memory>
#include <string>
#include <iostream>

template<typename T>
class SomeContainer {
private:
    std::unique_ptr<T> ptr_;
public:

    SomeContainer(T&& input) {
        ptr_ = std::make_unique<T>(input); 
    }

    ~SomeContainer() {
        // make it obvious the destructor is being called:
        std::cout << "Destroying SomeContainer" << std::endl;
        this->ptr_.release(); 
    }

    
};


// Type your code here, or load an example.
void Use_container() {
    std::string s = "Hello, world!";
    // stack construction: 
    // will go out of scope at end of function. 
    SomeContainer<std::string> i(std::move(s));
    
    // a different specialization,
    // and also heap allocated. Destructor will come first.
    std::complex<int> c(1,2);

    SomeContainer<std::complex<int>>* j = new SomeContainer<std::complex<int>>(std::move(c));
    delete j;
}
