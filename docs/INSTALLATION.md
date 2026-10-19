# インストールガイド / Installation Guide

> [!IMPORTANT]
> 個人・非商用のローカル利用のみ許可されています。再配布、転載、ミラー、同梱、販売、商用利用、素材抽出、視覚素材の改変・派生利用、AI学習利用は禁止されています。詳細は[Rin Miko個人利用ライセンス](../LICENSE.md)を確認してください。

## 必要なもの / Requirements

- Codex Desktop
- Gitを利用する場合はGit
- macOS/LinuxではPOSIX互換シェル、WindowsではPowerShell

## macOS / Linux

リポジトリのルートで実行します。

```sh
chmod +x scripts/install.sh
./scripts/install.sh
```

別のCodexホームを使う場合:

```sh
./scripts/install.sh /path/to/.codex
```

## Windows

PowerShellで実行します。

```powershell
.\scripts\install.ps1
```

別のCodexホームを使う場合:

```powershell
.\scripts\install.ps1 -CodexHome 'D:\path\to\.codex'
```

## 手動インストール / Manual installation

`pet/`内の2ファイルをコピーし、次の配置にします。

```text
<CODEX_HOME>/pets/rin-miko/
├── pet.json
└── spritesheet.webp
```

`CODEX_HOME`を設定していない一般的な環境では、ホームディレクトリ配下の`.codex`が使われます。

## 確認 / Verify

`pet.json`の`spritesheetPath`は`spritesheet.webp`、`spriteVersionNumber`は`2`である必要があります。Codex Desktopを完全に終了して起動し直し、Petの選択画面から「未来巫女・りん」を選択します。

`pet.json` must use `spritesheet.webp` as its `spritesheetPath` and `2` as its `spriteVersionNumber`. Fully quit and reopen Codex Desktop, then select “未来巫女・りん” from the pet selector.

## 更新 / Update

```sh
git pull
./scripts/install.sh
```

更新後はCodex Desktopを再起動してください。

## 削除 / Uninstall

`<CODEX_HOME>/pets/rin-miko`だけを削除し、Codex Desktopを再起動してください。リポジトリのコピーには影響しません。

Remove only `<CODEX_HOME>/pets/rin-miko`, then restart Codex Desktop. This does not affect the repository copy.

## トラブルシューティング / Troubleshooting

- `pet.json`と`spritesheet.webp`が`rin-miko`直下にあることを確認します。
- Codex Desktopを完全に終了してから再起動します。
- `spritesheet.webp`が2,577,550 bytesであることを確認します。
- 問題が続く場合は`pet/`から2ファイルをもう一度コピーします。

このカスタムPet形式はCodex Desktopのローカルパッケージ構成に基づき、将来のアプリ更新で変わる可能性があります。

`install.sh`は第1引数で導入先のCodexホームを指定できます。引数を省略した場合は、既存の`CODEX_HOME`設定、次に`~/.codex`を使用します。
