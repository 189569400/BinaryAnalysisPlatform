FROM ocaml/opam2:ubuntu-16.04

WORKDIR /home/opam

RUN sudo apt-get update && sudo apt-get install --yes python-pip \
 && opam switch 4.09 \
 && eval "$(opam env)" \
 && opam remote set-url default https://opam.ocaml.org \
 && opam repo add bap git+https://github.com/BinaryAnalysisPlatform/opam-repository --all \
 && opam update \
 && opam depext --install bap --yes -j 1 \
 && opam clean -acrs \
 && rm -rf /home/opam/.opam/4.0[2-8,10] \
 && rm -rf /home/opam/.opam/4.09/.opam-switch/sources/* \
 && rm -rf /home/opam/opam-repository \
 && sudo pip install bap

ENTRYPOINT ["opam", "config", "exec", "--" ]
