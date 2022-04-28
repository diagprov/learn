

default: helloworld prettyprintjson

clean:
	rm -f helloworld prettyprintjson *.class

rebuild: clean default

HelloWorld.class: HelloWorld.java
	/opt/graalvm/bin/javac $<

PrettyPrintJSON.class: PrettyPrintJSON.java
	/opt/graalvm/bin/javac $<


helloworld: HelloWorld.class
	native-image HelloWorld

prettyprintjson: PrettyPrintJSON.class
	native-image --language:js PrettyPrintJSON
