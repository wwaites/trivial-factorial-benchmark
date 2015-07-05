TARGETS=cfact gfact hfact ccfact pxfact.so ofact mfact scfact.class
all: ${TARGETS}

bench: all
	sh bench.sh

cfact: chick.scm cfact.so
	csc -O3 -o cfact chick.scm
cfact.so: cfact.scm
	csc -O3 -X numbers-syntax -scrutinize -specialize -dynamic \
		-o cfact.so cfact.scm 
gfact: gfact.go
	go build -o gfact gfact.go
hfact: hfact.hs
	ghc -O3 -o hfact --make hfact.hs
ccfact: ccfact.c
	cc -O3 -o ccfact ccfact.c -lgmp
pxfact.c: pxfact.pyx
	cython pxfact.pyx
pxfact.so: pxfact.c
	cc -O3 -fPIC -shared -I/usr/include/python2.7 -o pxfact.so pxfact.c
ofact: ofact.ml
	ocamlopt -ccopt -O3 -o ofact nums.cmxa ofact.ml 
mfact: mfact.sml
	mlton mfact.sml
scfact.class: scfact.scala
	scalac -optimise scfact.scala

clean:
	rm -f *~
	rm -f ${TARGETS}
	rm -f cfact.so hfact.hi hfact.o pxfact.c ofact.o ofact.cmi ofact.cmx
	rm -f *.class
	rm -f *.out
