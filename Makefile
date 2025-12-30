merge_scripts:
	cat scripts/*.md | grep -v -e "clipboard.md" -e "99_essay.md" > scripts/99_essay.md

# Docker targets
docker-build:
	docker-compose build

docker-up:
	docker-compose up

docker-down:
	docker-compose down

docker-serve:
	docker-compose up --build

# Run slides locally without Docker
serve-local:
	./scripts/serve-slides.sh