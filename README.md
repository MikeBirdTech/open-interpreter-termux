# [Open Interpreter](https://github.com/KillianLucas/open-interpreter) on Android

Follow these instructions for installing Open Interpreter on your Android device. [Termux](https://termux.dev/en/) is an Android terminal emulator and Linux environment app that works directly with no rooting or setup required. This is where Open Interpreter will be installed and interacted with.

<div align="center">

 | [日本語](docs/README_JP.md) | [English](README.md) |

</div>

---

## Installation

- Install [Termux](https://github.com/termux/termux-app/releases/tag/v0.118.0)

- Install [Termux:API](https://github.com/termux/termux-api/releases/tag/v0.50.1)

- Open Termux and run the following:

_Note: This takes a long time_

Update packages and sources

```bash
yes | pkg update
```

Install required packages

```bash
yes | pkg install termux-api python-pip cmake ninja patchelf build-essential matplotlib rust binutils libzmq
```

Allow storage permissions for termux after running:

```bash
termux-setup-storage
```

_Note: Android will ask you to grant permission after the first time which causes the command to not succeed initially_

So run the same command again and say 'Yes'

```bash
termux-setup-storage
```

Install open interpreter

```bash
pip install open-interpreter
```

Set your OpenAI API key:

```bash
export OPENAI_API_KEY=<apikey>
```

Start Open Interpreter

```bash
interpreter
```

- ...
- Profit

Note, `OS mode` is not currently supported on Android

---

## Considerations

### Updating config.yaml

When running `interpreter --config` a `config.yaml` may be created in `~/Downloads`. This is _not_ the config file used by Open Interpreter. This is due to how Android/Termux handles opening files.

In order to update your Open Interpreter config file, you need to edit the one located in `/data/data/com.termux/files/home/.config/Open Interpreter/`

You may get an error saying that Termux cannot use external applications. You need to update the `termux.properties` file. You can use any text editor, here are the steps for `nano`:

- `nano /.termux/termux.properties`
- uncomment `allow-external-apps` property
- save file

### Exiting the Chat

In order to exit the chat, you need to press `control + c`. In some instances, this will halt the current process Open Interpreter is running but will not exit the interactive chat. Pressing `control + c` a second time will exit the chat.

---

## Example Uses

Check out these posts for examples of how Open Interpreter can be used on your Android

- [One](https://x.com/MikeBirdTech/status/1707108619529916820)
- [Two](https://x.com/MikeBirdTech/status/1711798317288419382)
