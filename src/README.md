# srcディレクトリー
  texソースファイルを格納するディレクトリー.

## コンパイル方法 (latexmkを使用する)
各ディレクトリには`.latexmk`がおいてあるので、これを使用してソースをコンパイルすることができる。

```shell
$ latexmk
```
あるいはファイル名を指定して
```shell
$ latexmk filename
```
とすればいい。

## コンパイル方法 (makeを使用する)
### main.texをコンパイルする場合
```shell
$ make
```
main.dviが生成される. pdfを生成したい場合は
```shell
$ make
$ make pdf
```
とする.

### 個別のファイルをコンパイルする場合
```shell
$ make filename.dvi
```
とすれば良い.

### 中間生成ファイルを消すときは
```shell
$ make clean 
```
とする. 個別のファイルに対して中間生成ファイルを消したい場合は
```shell
$ make clean FILE=filename
```
とすればよい. すべてのファイルに対して中間生成ファイルを消すときは
```shell
$ make cleanup
```
とする.
