extern crate yaml_rust;

use std::collections::BTreeMap;
use std::fs;
use yaml_rust::{YamlLoader, YamlEmitter};




fn main() {
    let s =
"
foo:
    - list1
    - list2
bar:
    - 1
    - 2.0
dave:
    test:
        - rust
        - is
        - awesome
    inner:
        innerinner:
            2
        inception:
            7
";
    let docs = YamlLoader::load_from_str(s).unwrap();

    // Multi document support, doc is a yaml::Yaml
    let doc = &docs[0];

    // Debug support
    println!("{:?}", doc);

    // Index access for map & array
    assert_eq!(doc["foo"][0].as_str().unwrap(), "list1");
    assert_eq!(doc["bar"][1].as_f64().unwrap(), 2.0);

    // Chained key/array access is checked and won't panic,
    // return BadValue if they are not exist.
    assert!(doc["INVALID_KEY"][100].is_badvalue());

    // Dump the YAML object
    let mut out_str = String::new();
    {
        let mut emitter = YamlEmitter::new(&mut out_str);
        emitter.dump(doc).unwrap(); // dump the YAML object to a String
    }
    println!("{}", out_str);

    println!("Read test:");
    let trace = fs::read_to_string("x25519_ladder_i51_A.trace").expect("Unable to read file");
    let traceyaml = YamlLoader::load_from_str(&trace).unwrap();
    let traceyaml0 = &traceyaml[0]; 
    let mut out_str = String::new();
    {
        let mut emitter = YamlEmitter::new(&mut out_str);
        emitter.dump(traceyaml0).unwrap(); 
    }
    println!("{}", out_str);

    println!("Serde Test:");
    let mut map = BTreeMap::new();
    let mut nestedmap = BTreeMap::new();
    nestedmap.insert("nest".to_string(), "egg");
    map.insert("inner", &nestedmap);

    let serialized = serde_yaml::to_string(&map).expect("Serialization failed");
    println!("{}", serialized);
}
