FROM node:18-alpine

# Install Python for serving, build tools, and inotify-tools for file watching
RUN apk add --no-cache python3 py3-pip bash inotify-tools

# Install marp-cli globally
RUN npm install -g @marp-team/marp-cli

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Expose port for web server
EXPOSE 8080

# Run the serve script
CMD ["./scripts/serve-slides.sh"]
