#include <cstdio>
#include <cstdint>

template <class T> 
class Storage {
protected:
    T* m_ptr;
    size_t next = 0;
    size_t max;
public:


    Storage(std::size_t num) : next(0), max(num) {
        m_ptr = new T[num];
    }

    virtual ~Storage() noexcept {
        try {
            delete[] m_ptr;
        }
        catch(...) {
        }
    }

    virtual bool store(T item) {
        if ( next < max ) {
            m_ptr[next] = item;
            next++;
            return true;
        }
        return false;
    }
};


template <class T>
class RetrievableStorage : public Storage<T> {
public:

    RetrievableStorage(std::size_t num) : Storage<T>(num) 
    {}

    virtual ~RetrievableStorage() noexcept {
    }

    virtual T* retrieve(const size_t index) {
        if ( index >= this->next ) {
            return nullptr;
        }

        return &this->m_ptr[index];
    }

};

void use_classes() {
    
    Storage<char>* store = new RetrievableStorage<char>(10);
   
    for ( int i = 0; i < 10; i++ ) {
        store->store('A' + i);
    }

    RetrievableStorage<char>* rs = dynamic_cast<RetrievableStorage<char>*>(store);

    for ( int i = 0; i < 10; i++ ) {
        char* c = rs->retrieve(i);
        std::printf("%c", *c);
    }

}


int main(int argc, char** argv) {

    use_classes();
}
