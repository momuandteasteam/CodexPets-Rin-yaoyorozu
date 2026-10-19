# QAレポート / Quality Report

巫女りんの最終WebPは、Codex Pet v2の構造検査、透過処理検査、標準アニメーション検査、16方向のラベル付き意味・連続性確認を完了しています。

## 結果

| 検査 | 結果 |
|---|---|
| v2アトラス検証 | Pass |
| サイズ・グリッド | 1536 × 2288、8列 × 11行 |
| 使用フレーム | 73 |
| 未使用セル | 15、完全透明 |
| 構造エラー・警告 | 0 / 0 |
| 透明RGB残留 | 0 pixels |
| 最終品質ゲート | Pass |
| ジャンプの上昇幅 | 32 px |
| 待機と着地のベースライン差 | 0 px |
| 視線の最大水平ずれ | 4.0 px |

## レビュー済みの注意点

- 16方向のラベル付き確認は16 pass / 0 failです。
- 3名の独立したブラインド軸判定も通過しました。
- `157.5° → 180°`に差分量の統計的警告があります。通常サイズで、期待する方向への移行、足元の固定、顔と衣装の連続性を確認しています。

## インストーラー

- macOSでPOSIXシェルの構文検査と、空白を含む任意パスへのインストール・再インストールを確認しています。
- コピー後の2ファイルを、リポジトリの元ファイルとバイト単位で比較しています。
- Windows用PowerShellスクリプトは同梱していますが、このmacOS環境では実行していません。

## 証跡

- [構造・透過検証](../qa/validation.json)
- [最終品質ゲート](../qa/pet-quality.json)
- [クロマ除去](../qa/chroma-despill.json)
- [標準コマ検査](../qa/frames-review.json)
- [16方向の意味確認](../qa/direction-semantics.json)
- [連続性計測](../qa/look-continuity.json)

SHA-256 (`pet/spritesheet.webp`): `0bc73c4d332ec10cd5087084f263d52234eb467905f001aeda8b9687ee81fcfc`

プレビューは[全状態GIF](../assets/preview.gif)、[MP4](../assets/preview.mp4)、[状態別GIF](../assets/previews)、[待機→ジャンプ→待機](../assets/idle-jump-idle.gif)、[視線ループ](../assets/look-loop.gif)から確認できます。

[ブラインド軸判定の結果](../qa/direction-blind-validation.json)も保存しています。
