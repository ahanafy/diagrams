render:
	go build -o bin/diagram-example .
	./bin/diagram-example

diagram: render
	@cd go-diagrams; \
	mkdir ../images; \
	dot -Tpng app.dot > ../images/diagram.png