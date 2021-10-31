# srcディレクトリー
  texソースファイルを格納するディレクトリー.

## コンパイル方法 (latexmkを使用する)
各ディレクトリには`.latexmk`がおいてあるので、これを使用してソースをコンパイルすることができる。

```sh
$ latexmk
```
あるいはファイル名を指定して
```sh
$ latexmk filename
```
とすればいい。

中間ファイルを消すときは、
```sh
$ latexmk -c filename
$ latexmk -C filename
```