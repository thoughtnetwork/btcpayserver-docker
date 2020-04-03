# Build btcpayserver
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.0.3.164/amd64.Dockerfile
DOCKERFILE="amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.0.3.164/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.0.3.164/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building btcpayserver/btcpayserver:1.0.3.164"
git clone https://github.com/thoughtnetwork/btcpayserver btcpayserver
cd btcpayserver
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "andyjh122/btcpayserver:1.0.3.164" .
cd - && cd ..
