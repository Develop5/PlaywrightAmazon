#environment
env=$1

#cucumber tag
tag=$2

export COMMON_CONFIG_FILE=env/common.env
export NODE_ENV=$env

yarn run cucumber:$env --profile $tag || yarn run postcucumber
