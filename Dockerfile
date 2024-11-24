FROM klakegg/hugo:ext-alpine
WORKDIR /src
COPY . .
RUN hugo --minify
CMD ["hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://localhost", "--watch"]
