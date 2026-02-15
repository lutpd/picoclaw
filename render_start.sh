#!/bin/sh[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]

# 1. Create a dummy web server for UptimeRobot (Listens on Render's PORT)
echo "Starting dummy server on port $PORT..."
# A simple one-line Python web server that responds 200 OK
python3 -m http.server $PORT &[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]

# 2. Generate config from Environment Variables (Optional but recommended for security)
# If you prefer, you can commit your config.json, but using Env Vars is safer.
mkdir -p ~/.picoclaw
if [ ! -f ~/.picoclaw/config.json ]; then
    echo "Creating config from environment variables..."[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)]
    # This is a basic template. You can expand it.
    cat <<EOF > ~/.picoclaw/config.json
{
  "channels": {
    "telegram": {
      "enabled": true,
      "token": "$TELEGRAM_TOKEN",
      "allow_from": ["$TELEGRAM_USER_ID"]
    },
    "discord": {
      "enabled": true,
      "token": "$DISCORD_TOKEN"
    }
  },
  "providers": {
    "openrouter": {
      "api_key": "$OPENROUTER_API_KEY"
    }
  }
}
EOF
fi

# 3. Start the PicoClaw Gateway
echo "Starting PicoClaw Gateway..."
./picoclaw gateway
```[[1](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQGOqEZtjBZm_xsNSqoN5aepippPo-WZqP1aQwQyqtN3mQ1l4IFOvPluI_N0h_mmDrw6hfluzcyM9hzoVJlLDDml-yLccENwoan878c_6HEDGiFzDjwHt7atDWR1Jk2C0GiEg4lXX-0%3D)][[2](https://www.google.com/url?sa=E&q=https%3A%2F%2Fvertexaisearch.cloud.google.com%2Fgrounding-api-redirect%2FAUZIYQF1ch4qjDLH8jPfFIf5NJZyBoX3scE2EVrcLPcQxS2Xh2bkUDuyENOMGY-O2jvCh6Ani8E-2imt5dui5r5c1VD2i9ftLoNorR3rgPEReQ7QA6TrVfOZzE7b9iBhdjk%3D)]
