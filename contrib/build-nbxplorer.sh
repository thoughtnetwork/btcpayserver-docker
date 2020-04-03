# Build nbxplorer
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.14/Dockerfile.linuxamd64
DOCKERFILE="Dockerfile.linuxamd64"
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.14/Dockerfile.linuxarm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.linuxarm32v7"
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.14/Dockerfile.linuxarm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.linuxarm64v8"
echo "Building nicolasdorier/nbxplorer:2.1.14"
git clone https://github.com/thoughtnetwork/nbxplorer nbxplorer
cd nbxplorer
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "andyjh122/nbxplorer:2.1.14" .
cd - && cd ..

