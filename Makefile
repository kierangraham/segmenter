all:
	gcc -Wall -g segmenter.c -o segmenter -lavformat -lavcodec -lavutil -lvorbis -ltheora -lbz2 -lm -lz -lfaac -lmp3lame -lx264

clean:
	rm segmenter

install: segmenter
	cp segmenter /usr/local/bin/

uninstall:
	rm /usr/local/bin/segmenter
