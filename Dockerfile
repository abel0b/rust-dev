FROM rust:1.41
ENV RUST_BACKTRACE full
RUN cargo install cargo-watch
WORKDIR /usr/src/app
ENTRYPOINT ["cargo", "watch", "-x"]
CMD ["check"]
