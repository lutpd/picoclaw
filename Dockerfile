# ... (keep the builder stage at the top as is) ...

FROM python:3-alpine

# Install dependencies for the bot
RUN apk add --no-cache ca-certificates

# Copy the binary from the builder stage
COPY --from=builder /app/picoclaw /usr/bin/picoclaw

# Copy our start script
COPY render_start.sh /render_start.sh
RUN chmod +x /render_start.sh

# Set the entrypoint
CMD ["/render_start.sh"]
