FROM runatlantis/atlantis:v0.11.1

LABEL authors="Rui Chen <chenrui333@gmail.com>"

ENV TERRAGRUNT_VERSION=v0.22.4

RUN curl -s -Lo terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
    chmod +x terragrunt && \
    mv terragrunt /usr/local/bin

RUN chown -R atlantis:atlantis /usr/local/bin/atlantis
