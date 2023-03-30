all:
	@echo Hope you regenerated everything.

publish:
	./publish.sh ai

clean:
	find . -name '*~' -delete
