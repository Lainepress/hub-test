
HC = ghc --make -outputdir build -Wall

smoke.exe: smoke.hs
	$(HC) -o smoke.exe smoke.hs

clean:
	rm -rf build smoke.exe
