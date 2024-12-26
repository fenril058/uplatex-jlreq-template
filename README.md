# LaTeXでシンプルな書籍作成

日本語LaTeXの一つであるupLaTeX + dvipdfmxで書籍原稿を作成するためのテンプレートです。

昨今のLaTeX事情を鑑みると、[LuaTeX-ja - TeX Wiki](https://texwiki.texjp.org/?LuaTeX-ja)
のほうが良いのかもしれませんが、
凝ったことをしなければ将来の移行はそれほど難易度が高くないと考えています。

クラスファイルは[jlreq](https://github.com/abenori/jlreq)を採用しました。


## ディレクトリ構成

```
uplatex-jlreq-template/
├── .gitignore
├── LICENSE
├── Makefile
├── package.json
├── package-lock.json
├── prh-rules/
├── README.md
├── src/
│   ├── 00-preface.tex
│   ├── 01-overview.tex
│   ├── ⁝
│   ├── 81-apendix.tex
│   ├── 99-preface.tex
│   ├── .latexmkrc
│   ├── fig/
│   ├── main.tex
│   └── Makefile
└── .textlintrc.json
```

## Typeset

単に`make`するだけです(`latexmk`を使っています)。
生成物を全て消すには`make distclean`、`.aux`など一時ファイルを消すだけなら`make clean`です。
なお、一時ファイルは`.tex_intermediates/`に保持されています。

## 文章校正

文章校正には[textlint](https://textlint.github.io/)と
[prh](https://github.com/prh/prh)というNode.js製ツールを使います。
表記揺れのライブラリとして[prh-rules](https://github.com/nowsprinting/prh-rules)を参照しています。
修正候補を出すには`make lint`とします。VScodeなどのエディターにも組み込めるはずです。
初回は`npm install`が必要かもしれません。

## hyperefのワークアラウンドについて

もし`hyperref`パッケージを使うのであれば、
`\backmatter`以降では`\chapter`の代わりに`\Chapter`をつかってください。
これは[\backmatter以降はhyperref packageによる章の参照が効かない · Issue #122 · abenori/jlreq](https://github.com/abenori/jlreq/issues/122)のワークアラウンドです。
