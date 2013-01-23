
build: components bootstrap-forms.css
	@component build --dev

bootstrap-forms.css: bootstrap-forms.less
	node_modules/.bin/recess bootstrap-forms.less --compile > bootstrap-forms.css

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
