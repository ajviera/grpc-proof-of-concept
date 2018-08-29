# GRPC - Proof of Concept

Client side using connection with gRPC and Protobuf.

## Install on Mac

```sh
brew tap dart-lang/dart
brew install dart
pub global activate protoc_plugin
vim ~/.zshrc
export PATH="$PATH":"$HOME/.pub-cache/bin"
source ~/.zshrc
protoc --dart_out=grpc:protos -Iprotos protos/helloworld.proto
```
