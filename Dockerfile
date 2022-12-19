FROM linuxserver/code-server:latest

RUN /app/code-server/bin/code-server \
    --install-extension jdinhlife.gruvbox \
    --install-extension golang.go \
    --install-extension aaron-bond.better-comments \
    --install-extension redhat.vscode-yaml \
    --install-extension LaurentTreguier.vscode-simple-icons \
    --install-extension hashicorp.terraform \
    --install-extension yzhang.markdown-all-in-one \
    --extensions-dir /config/extensions

COPY --from=golang:1.19 /usr/local/go/ /usr/local/go/

ENV PATH="/usr/local/go/bin:${PATH}"
