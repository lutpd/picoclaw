# ... (keep the builder stage at the top as is) ...

FROM python:3-alpine[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]

# Install dependencies for the bot
RUN apk add --no-cache ca-certificates[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]

# Copy the binary from the builder stage (assuming the builder stage is named 'builder')
# Note: You must check the top line of the original Dockerfile. 
# If it says "FROM golang:1.21 as builder", use --from=builder.
COPY --from=builder /app/picoclaw /usr/bin/picoclaw[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]

# Copy our start script
COPY render_start.sh /render_start.sh
RUN chmod +x /render_start.sh[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]

# Set the entrypoint
CMD ["/render_start.sh"]
