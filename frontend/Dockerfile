FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app

RUN useradd -ms /bin/bash appuser \
    && mkdir -p /home/appuser \
    && chown -R appuser:appuser /home/appuser

# Mark Flutter SDK as safe for git
RUN git config --global --add safe.directory /sdks/flutter

# (Optional) Fix SDK permissions if needed
RUN chown -R appuser:appuser /sdks/flutter

COPY pubspec.yaml pubspec.lock ./
COPY . .

RUN chown -R appuser:appuser /app

USER appuser
ENV HOME=/home/appuser

RUN flutter pub get
RUN flutter doctor

EXPOSE 8080

CMD ["flutter", "run", "-d", "web-server", "--web-port=8080", "--web-hostname=0.0.0.0"]