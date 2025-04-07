FROM elixir:otp-26

WORKDIR /opt

RUN mix local.hex --force
RUN mix local.rebar --force

COPY . /opt/

RUN mix deps.get

ENTRYPOINT ["/bin/bash"]
