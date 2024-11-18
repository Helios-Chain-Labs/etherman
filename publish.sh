VERSION=${VERSION:-"v0.50.10-helios-1"}

# version must be start by v8

echo "Deploy suplog"
git add .
git commit -m "Publish $VERSION"
git push
git tag $VERSION
git push origin $VERSION
sleep 5
GOPROXY=proxy.golang.org go list -m github.com/Helios-Chain-Labs/etherman@$VERSION

echo "Publish done"