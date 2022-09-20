#functions nicely from ubuntu 11.0 to ubuntu 22.04
#functions on fedora 36

SIMSRC ?= simulador_fonte/
MONTSRC ?= montador_fonte/
VSCEXT ?= ~/.vscode/extensions #~/.vscode-oss/extensions #vscodium extensions folder

all: clean bin simulador montador


clean:
	@rm -rf bin/

bin:
	@mkdir bin/

simulador: dependencies
	@cd $(SIMSRC) && sh compila.sh && mv sim ../bin/

montador:
	@cd $(MONTSRC) && gcc *.c -o montador -march=native -O3 && mv montador ../bin/


dependencies: GTK ncurses

GTK: 
	sudo apt install libgtk2.0-dev -y

ncurses:
	sudo apt install libncurses5-dev -y

vscode:
	git clone https://github.com/gabriel-libardi/icmc-assembly
	mv icmc-assembly $(VSCEXT)
