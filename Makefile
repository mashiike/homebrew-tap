update/%:
	maltmill new -w mashiike/$*

tools:
	brew install Songmu/tap/maltmill

update-all:
	grep -l darwin *.rb | xargs -n 1 maltmill -w

recreate-all:
	grep -l darwin *.rb | sed -e 's/\.rb//g' | xargs -I{} -n 1 maltmill new -w mashiike/{}
