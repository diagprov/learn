
use async_trait::async_trait;
use futures::join;

struct TestStruct {
    somedata: Vec<String>,
}

impl TestStruct {

    pub fn new() -> Self {
        TestStruct {
            somedata: Vec::new(),
        }
    }
}

#[async_trait(?Send)]
trait TestAsyncTrait {

    async fn test_method(&mut self, s: String) -> Result<(), ()>;
}


#[async_trait(?Send)]
impl TestAsyncTrait for TestStruct {

    async fn test_method(&mut self, s: String) -> Result<(), ()>
    {
        self.somedata.push(s);
        Ok(())
    }
}


fn doSomethingAsync<T: TestAsyncTrait>(t: &mut T) {
    async {
        let f1 = t.test_method(String::from("First String"));
        let f2 = t.test_method(String::from("Second String"));
        let f3 = t.test_method(String::from("Third String"));
        let (_, _, _) = join!(f1,f2,f3);
    };
}

fn main() {

    let mut t : TestStruct = TestStruct::new();
    doSomethingAsync(&mut t);
    println!("Outputting Strings");
    for s in t.somedata {
        println!("String: {}", s);
    }
}
