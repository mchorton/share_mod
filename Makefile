dualkeyboards: alterkeys.c
	gcc -Wall -o alterkeys alterkeys.c -framework ApplicationServices

install: clean dualkeyboards
	./appify alterkeys ShareMod
	cp -R ShareMod.app /Applications/

clean:
	rm -f alterkeys
	rm -rf ShareMod.app

uninstall:
	rm -rf /Applications/ShareMod.app
