releases/%:
	maltmill new -w mashiike/$*

tools:
	brew install Songmu/tap/maltmill

update-all:
	grep -l darwin *.rb | xargs -n 1 maltmill -w
