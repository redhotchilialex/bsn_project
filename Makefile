COMPONENT=BSNNodeAppC

BUILD_EXTRA_DEPS += BSNNode.class
CLEAN_EXTRA = *.class BSNNodeMsg.java

CFLAGS += -I$(TOSDIR)/lib/T2Hack

BSNNode.class: $(wildcard *.java) BSNNodeMsg.java
	javac -target 1.4 -source 1.4 *.java

BSNNodeMsg.java:
	mig java -target=null $(CFLAGS) -java-classname=BSNNodeMsg BSNNode.h bsn_msg -o $@

include $(MAKERULES)

