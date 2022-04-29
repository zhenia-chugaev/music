install:
	npm ci
	npm run build

lint:
	npx htmlhint src/*.html
	npx htmlhint --config htmlhint.conf src/*.html
	npx stylelint src/scss/*.scss

push: lint
	git push origin main

deploy:
	npm run build
	npx surge src/
