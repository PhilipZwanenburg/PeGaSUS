CC := g++ 

#OPTS := -Wall -Wextra
OPTS := -g

BOOST_ROOT := /home/2017/pzwane/Desktop/programs/boost_1_64_0

BOOST_TEST_LIB := $(BOOST_ROOT)/build/test/lib

INCS := -I $(BOOST_ROOT)/build/test/include
LIBS := -static -L -Wl,--no-as-needed -lboost_unit_test_framework 

ex1:
	$(CC) $(OPTS) -I $(BOOST_ROOT) ex1.cpp $(INCS) $(LIBS)

ex1_dyn:
	$(CC) $(OPTS) ex1_dyn.cpp $(INCS) $(LIBS)

boost_dyn:
#	$(CC) $(OPTS) boost_dyn.cpp -L -Wl,-rpath=$(BOOST_TEST_LIB) -lboost_unit_test_framework
#	$(CC) $(OPTS) boost_dyn.cpp -Wl,-rpath=$(BOOST_TEST_LIB) -lboost_unit_test_framework
	$(CC) $(OPTS) boost_dyn.cpp -lboost_unit_test_framework
