# TODO: Refactor this Dockerfile to use a multi-stage build.
# The goal is to create a final image that is much smaller than this one.

# This single stage uses the full Go SDK, resulting in a large image.
FROM golang:1.21-alpine AS builder

WORKDIR /src

# Copy the source code and build the application
COPY app/ .
RUN CGO_ENABLED=0 go build -o /app/server .

# Expose the port the app runs on
# EXPOSE 8080

# The command to run the executable
# CMD ["/server"]

# --- Final Stage ---
# Start a new, clean stage from a minimal base image
FROM scratch

# Copy *only* the compiled binary from the "builder" stage
COPY --from=builder /app/server /server

# Expose the application port
EXPOSE 8080

# Set the command to run the binary
CMD ["/server"]