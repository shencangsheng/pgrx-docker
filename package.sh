#!/bin/sh

get_pg_config() {
    local version=$1
    local config_file="/root/.pgrx/config.toml"
    local key="pg${version}"

    local value=$(grep "^${key}" "${config_file}" | awk -F'=' '{print $2}' | tr -d ' "')

    if [ -z "$value" ]; then
        echo "Configuration for version ${version} not found"
        exit 1
    else
        echo "${value}"
    fi
}

cargo install cargo-pgrx --version ${PGRX_VERSION} --locked

config_value=$(get_pg_config $PSQL_VERSION)

cargo pgrx package -c $config_value
