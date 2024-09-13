NAME=v2ray-plugin
BINDIR=bin
GOBUILD=CGO_ENABLED=0 go build -ldflags '-w -s -buildid='
GOINSTALL=CGO_ENABLED=0 go install -ldflags '-w -s -buildid='

.PHONY build:
build:
	@echo "Building..."
	$(GOBUILD) -o $(BINDIR)/$(NAME)

.PHONY install:
install:
	@echo "Installing..."
	$(GOINSTALL)