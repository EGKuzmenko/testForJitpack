.DEFAULT_GOAL	:=	build-run
compile:	clean
	mkdir	-p	./target/classes
	javac	-d	./target/classes	./src/main/java/games/Slot.java
run:
	java	-jar	./target/testForJitpack-1.0-SNAPSHOT-jar-with-dependencies.jar
clean:
	rm	-rf	./target
build-run:	build	run
build:	
	./mvnw	clean	package
update:
	./mvnw	versions:update-properties
	./mvnw	versions:display-plugin-updates
