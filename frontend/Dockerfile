# Use the official Dart image to build the Flutter web app
FROM dart:stable AS build

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git /flutter
ENV PATH="/flutter/bin:${PATH}"
RUN flutter --version

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Get dependencies and build web release
RUN flutter pub get
RUN flutter build web --release

# Use a lightweight web server to serve the built files
FROM nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]