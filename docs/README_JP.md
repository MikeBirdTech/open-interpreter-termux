


# AndroidでOpen Interpreterを使う

以下の手順に従って、AndroidデバイスにOpen Interpreterをインストールしましょう。[Termux](https://termux.dev/en/)は、root化や特別な設定なしで直接使えるAndroid用ターミナルエミュレータおよびLinux環境アプリです。Open InterpreterはここにインストールされTermux上で操作します。


<div align="center">

 | [日本語](README_JP.md) | [English](../README.md) |

</div>

---

## インストール方法

- [Termux](https://github.com/termux/termux-app/releases/tag/v0.118.0)をインストール

- [Termux:API](https://github.com/termux/termux-api/releases/tag/v0.50.1)をインストール 

- Termuxを開いて以下のコマンドを実行:

_注意: かなり時間がかかります_

パッケージとソースを更新
```bash
yes | pkg update
```

必要なパッケージをインストール
```bash 
yes | pkg install termux-api python-pip cmake ninja patchelf build-essential matplotlib rust binutils libzmq
```

以下を実行した後、Termuxにストレージ権限を付与:
```bash
termux-setup-storage
```

_注意: 初回実行時にAndroidから権限を求められ、コマンドが成功しないことがあります_

その場合は再度同じコマンドを実行し「Yes」を選択
```bash
termux-setup-storage 
```

Open Interpreterをインストール
```bash
pip install open-interpreter
```

OpenAI APIキーを設定:
```bash
export OPENAI_API_KEY=<apikey>
```

Open Interpreterを起動
```bash 
interpreter
```

- ...
- 完了

なお、現在AndroidではOSモードはサポートされていません。

---

## 注意点

### config.yamlの更新について

`interpreter --config`を実行すると、`~/Downloads`に`config.yaml`が作成されることがあります。これはOpen Interpreterで使用される設定ファイルではありません。Android/Termuxがファイルを開く方法に起因します。

Open Interpreterの設定ファイルを更新するには、`/data/data/com.termux/files/home/.config/Open Interpreter/`にあるファイルを編集する必要があります。

Termuxが外部アプリを使用できないというエラーが出る場合は、`termux.properties`ファイルを更新する必要があります。任意のテキストエディタを使用できますが、ここでは`nano`を使った手順を示します:

- `nano /.termux/termux.properties`を実行
- `allow-external-apps`プロパティのコメントを外す
- ファイルを保存

### チャットの終了方法

チャットを終了するには、`control + c`を押します。場合によっては、Open Interpreterが現在実行中のプロセスを停止するだけで、インタラクティブチャットは終了しないことがあります。`control + c`を2回押すとチャットが終了します。 

---

## 使用例

AndroidでのOpen Interpreterの使用例については、以下の投稿をチェックしてください。

- [例1](https://x.com/MikeBirdTech/status/1707108619529916820)  
- [例2](https://x.com/MikeBirdTech/status/1711798317288419382)