

CXX = clang++

CXXFLAGS = -O3 -std=c++0x -Wall -Wextra -Wdisabled-optimization -pedantic -Wctor-dtor-privacy -Wnon-virtual-dtor -Woverloaded-virtual -Wsign-promo -Wno-long-long -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -I../include -I/usr/local/include

LDFLAGS = -lexpat -lz -lpthread -lprotobuf-lite -losmpbf -L/usr/local/lib -lgd -lz -lm

PROGRAMS = \
	example_routing \
	example_counter

all: $(PROGRAMS)

example_routing: example_routing.cc
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

example_counter: example_counter.cc
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f *.o core $(PROGRAMS)


