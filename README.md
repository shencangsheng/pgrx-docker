# pgrx Docker

> Build Postgres Extensions with Rust!

[![Docker Pulls](https://img.shields.io/docker/pulls/shencangsheng/pgrx.svg)](https://hub.docker.com/r/shencangsheng/pgrx)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.md)

## 💡 Trying

```bash
docker run -v $(pwd):/usr/src/app shencangsheng/pgrx:13
ls target/release/{plugin_name}-{postgresql_version}/.pgrx/{psql_version}/pgrx-install
```

## 👍 Libraries Used

- [pgrx](https://github.com/pgcentralfoundation/pgrx)

## 📝 License

A short snippet describing the license (MIT)

MIT © Cangsheng Shen
