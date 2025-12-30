# A Bug's Life - Docker Setup

## Running with Docker

### Quick Start

Build and run the slides server:
```bash
make docker-serve
```

Or using docker-compose directly:
```bash
docker-compose up --build
```

The slides will be available at: http://localhost:8080/slides.html

### Docker Commands

- **Build the image**: `make docker-build` or `docker-compose build`
- **Start the server**: `make docker-up` or `docker-compose up`
- **Stop the server**: `make docker-down` or `docker-compose down`

### Local Development (without Docker)

Prerequisites:
- Node.js and npm
- Python 3
- fswatch (for auto-reload): `brew install fswatch`

Install marp-cli:
```bash
npm install -g @marp-team/marp-cli
```

Run the local server:
```bash
make serve-local
```

Or directly:
```bash
./scripts/serve-slides.sh
```

## How It Works

The Docker setup:
1. Uses Node.js Alpine image for smaller size
2. Installs marp-cli to convert Markdown to HTML
3. Includes Python for serving the slides
4. Mounts the `slides/` directory as a volume for live editing
5. Serves on port 8080

Edit `slides/slides.md` and the changes will be reflected when you rebuild.
