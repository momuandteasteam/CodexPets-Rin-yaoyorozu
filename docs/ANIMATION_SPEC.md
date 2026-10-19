# スプライト仕様 / Sprite Specification

## パッケージ

| 項目 | 値 |
|---|---|
| Pet ID | `rin-miko` |
| 表示名 | Rin（yaoyorozu衣装） |
| Sprite version | `2` |
| 形式 | WebP RGBA |
| アトラス | `1536 × 2288 px` |
| グリッド | 8列 × 11行 |
| セル | `192 × 208 px` |
| 使用フレーム | 73 |

## 行レイアウト

| 行 | 状態 | 使用フレーム |
|---:|---|---:|
| 0 | idle | 6 |
| 1 | running-right | 8 |
| 2 | running-left | 8 |
| 3 | waving | 4 |
| 4 | jumping | 5 |
| 5 | failed | 8 |
| 6 | waiting | 6 |
| 7 | running | 6 |
| 8 | review | 6 |
| 9 | look-row-9 | 8 |
| 10 | look-row-10 | 8 |

未使用の15セルは完全透明です。方向角は画面座標を基準とし、`000°`が上、`090°`が右、`180°`が下、`270°`が左です。

Unused cells are fully transparent. Look directions use screen coordinates: 000 up, 090 right, 180 down, 270 left.

## マニフェスト

```json
{
  "id": "rin-miko",
  "displayName": "Rin（yaoyorozu衣装）",
  "description": "yaoyorozu衣装をまとったRin。白と朱の装束、桜の髪飾り、青い結晶が目印。",
  "spriteVersionNumber": 2,
  "spritesheetPath": "spritesheet.webp"
}
```

`spriteVersionNumber: 2`と`spritesheetPath`を維持してください。スプライトのリサイズやグリッド位置の変更は互換性を壊す可能性があります。
