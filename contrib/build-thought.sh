# Build thought
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Thought/0.18.0/linuxamd64.Dockerfile
DOCKERFILE="Thought/0.18.0/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Thought/0.18.0/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Thought/0.18.0/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Thought/0.18.0/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Thought/0.18.0/linuxarm64v8.Dockerfile"
echo "Building andyjh122/thought:0.18.0"
git clone https://github.com/thoughtnetwork/dockerfile-deps thought
cd thought
git checkout Thought/0.18.0
cd "$(dirname $DOCKERFILE)"
docker build -f "linuxamd64.Dockerfile" -t "andyjh122/thought:0.18.0" .
cd - && cd ..

