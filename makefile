NAME=carver
${NAME}.pdf:${NAME}.tex $(wildcard *.tex */*.tex)
	@echo | xelatex $< 2>&1 > /dev/null
	@echo "UPDATED : $$(date)"

auto:
	@while true; do sleep 1; make; done | grep UPDATED

clean:
	rm -f *.aux *.log *~ *.out
