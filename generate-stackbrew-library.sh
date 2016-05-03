#!/usr/bin/env bash

set -e

cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

url='git://github.com/yongjhih/docker-redex'

generate-version() {
	local version=$1

	commit="$(git log -1 --format='format:%H' "$version")"

	versionAliases=()
	if [ "$version" == 'master' ]; then
		echo "latest: ${url}@${commit}"
	else
		echo "${version}: ${url}@${commit}"
	fi
}

echo '# maintainer: Andrew Chen <yongjhih@gmail.com> (@yongjhih)'

versions=( master )

for version in "${versions[@]}"; do
	generate-version "$version"
done
