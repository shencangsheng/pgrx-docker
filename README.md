# pgrx Docker

> Build Postgres Extensions with Rust!

[![Docker Pulls](https://img.shields.io/docker/pulls/shencangsheng/pgrx.svg)](https://hub.docker.com/r/shencangsheng/pgrx)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.md)

## 💡 Trying

```bash
docker run -v $(pwd):/usr/src/app shencangsheng/pgrx:13
ls target/release/{plugin_name}-{postgresql_version}/.pgrx/{psql_version}/pgrx-install
```

| Parameter      | Description                                                           |
| -------------- | --------------------------------------------------------------------- |
| `PSQL_VERSION` | The version of PostgreSQL (optional: 12, 13, 14, 15, 16; default: 13) |

## 🚀 How to Build and Compile

```shell
docker build --build-arg PSQL_SUPPORT_VERSION=13 -t example/pgrx:13 .
```

| Parameter              | Description                                                                     |
| ---------------------- | ------------------------------------------------------------------------------- |
| `RUST_TAG`             | The version tag for Rust, defaulting to `1.83.0-bullseye`                       |
| `PSQL_SUPPORT_VERSION` | The supported version of PostgreSQL (optional: 12, 13, 14, 15, 16; default: 13) |
| `PGRX_VERSION`         | The version of pgrx, defaulting to `0.11.4`                                     |
| `CMD`                  | The command to execute, defaulting to `/usr/bin/pgrx-package`                   |

## 👍 Libraries Used

- [pgrx](https://github.com/pgcentralfoundation/pgrx)

## 📝 License

A short snippet describing the license (MIT)

MIT © Cangsheng Shen
