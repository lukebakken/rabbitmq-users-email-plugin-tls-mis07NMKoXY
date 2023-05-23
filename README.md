# rabbitmq-users-email-plugin-tls-mis07NMKoXY

https://groups.google.com/g/rabbitmq-users/c/mis07NMKoXY/

# `gen_smtp` & TLS

https://github.com/gen-smtp/gen_smtp#server-example

# Build

```
docker build --pull --no-cache --tag rabbitmq-users-email-plugin-tls .
```

# Run

```
docker run --rm --publish 2525:2525 rabbitmq-users-email-plugin-tls
```

# Verify

```
make s_client
```
