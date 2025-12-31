#!/bin/bash

# Script to watch slides.md for changes and regenerate slides.html
# Also serves the slides on a local web server

SLIDES_DIR="slides"
SLIDES_MD="$SLIDES_DIR/slides.md"
SLIDES_HTML="$SLIDES_DIR/slides.html"
PORT=8080

echo "🎬 Starting Marp slide server..."
echo "📝 Watching: $SLIDES_MD"
echo "🌐 Server will run on: http://localhost:$PORT"
echo ""

# Check if marp-cli is installed
if ! command -v marp &> /dev/null; then
    echo "❌ marp-cli is not installed"
    echo "Install it with: npm install -g @marp-team/marp-cli"
    exit 1
fi

# Initial build
echo "🔨 Building slides..."
marp "$SLIDES_MD" --html --output "$SLIDES_HTML"

# Start the web server in the background
echo "🚀 Starting web server on port $PORT..."
cd "$SLIDES_DIR" && python3 -m http.server $PORT &
SERVER_PID=$!

echo "✅ Server started (PID: $SERVER_PID)"
echo "📖 Open http://localhost:$PORT/slides.html in your browser"
echo ""
echo "👀 Watching for changes... (Press Ctrl+C to stop)"
echo ""

# Cleanup function
cleanup() {
    echo ""
    echo "🛑 Stopping server..."
    kill $SERVER_PID 2>/dev/null
    echo "✅ Done!"
    exit 0
}

trap cleanup SIGINT SIGTERM

# Watch for changes and rebuild
if command -v inotifywait &> /dev/null; then
    # Use inotifywait (Linux/Alpine)
    while inotifywait -e modify "$SLIDES_MD"; do
        echo "🔄 Change detected, rebuilding..."
        marp "$SLIDES_MD" --html --output "$SLIDES_HTML"
        echo "✅ Slides updated at $(date '+%H:%M:%S')"
    done
elif command -v fswatch &> /dev/null; then
    # Use fswatch (macOS)
    fswatch -o "$SLIDES_MD" | while read change; do
        echo "🔄 Change detected, rebuilding..."
        marp "$SLIDES_MD" --html --output "$SLIDES_HTML"
        echo "✅ Slides updated at $(date '+%H:%M:%S')"
    done
else
    echo "⚠️  No file watcher found. Install inotify-tools or fswatch for auto-reload."
    echo "Server will continue running but won't auto-reload on changes."
    # Keep the server running
    tail -f /dev/null
fi
