# This is wnc's notes.

## Install

```shell
conda create -f environment.yml

git clone https://github.com/TonyCrane/mkdocs-toolchain
pip install mkdocs-toolchain/mkdocs-toc-plugin
rm -rf mkdocs-toolchain

git clone https://github.com/KinnariyaMamaTanha/mkdocs-statistics-plugin
pip install ./mkdocs-statistics-plugin
rm -rf mkdocs-statistics-plugin

pip cache purge
```