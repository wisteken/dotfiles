# Neovim キーマップ チートシート

Leader key: `<Space>`

## ファイル・検索

| キー | 説明 |
|------|------|
| `<leader><leader>` | ファイル検索 (buffers + recent + git_files) |
| `<leader>gf` | Git管理ファイルのみ検索 |
| `<leader>gg` | 全文検索 (grep) |
| `<leader>fs` | 置換 (rip-substitute) |
| `<leader>fe` | ファイルエクスプローラー (Yazi: 現在のファイル) |
| `<leader>fE` | ファイルエクスプローラー (Yazi: cwd) |

## LSP (コードナビゲーション)

| キー | 説明 |
|------|------|
| `gd` | 定義へジャンプ (peek表示) |
| `gD` | 宣言へジャンプ |
| `gr` | 参照一覧 |
| `gI` | 実装へジャンプ |
| `gy` | 型定義へジャンプ |
| `gs` | ドキュメント内シンボル |
| `gS` | ワークスペース全体のシンボル検索 |
| `gi` | 呼び出し元 (incoming calls) |
| `go` | 呼び出し先 (outgoing calls) |
| `K` | ホバードキュメント |
| `<C-k>` | シグネチャヘルプ (n/i) |

## LSP (診断・アクション)

| キー | 説明 |
|------|------|
| `<leader>cd` | 行の診断を表示 |
| `<leader>.` | コードアクション |
| `<leader>cr` | リネーム |
| `<leader>cf` | フォーマット |
| `<leader>cs` | シンボル検索 (aerial picker) |
| `<leader>cn` | ドキュメントコメント生成 |
| `<leader>uh` | インレイヒントのトグル |
| `[d` / `]d` | 前/次の診断 |
| `[e` / `]e` | 前/次のエラー |
| `[w` / `]w` | 前/次の警告 |
| `<leader>sd` | 診断一覧 |

## Git

| キー | 説明 |
|------|------|
| `<leader>lg` | Lazygit |
| `<leader>gs` | Git status |
| `<leader>gd` | Diffview 開く |
| `<leader>gD` | Diffview 閉じる |
| `<leader>gh` | ファイル履歴 |
| `<leader>gH` | ブランチ履歴 |
| `<leader>gO` | インライン差分オーバーレイ (mini.diff) |
| `<leader>gl` | Git permalink をコピー |
| `<leader>gL` | Git permalink を開く |
| `[h` / `]h` | 前/次のhunk |
| `gh` | hunkを適用 |
| `gH` | hunkをリセット |

## 移動・ジャンプ

| キー | 説明 |
|------|------|
| `s` | Flash ジャンプ |
| `S` | Flash Treesitter |
| `f<CR>` | 次の空行へ |
| `F<CR>` | 前の空行へ |
| `n` / `N` | 次/前の検索結果 (中央表示) |
| `*` / `#` | カーソル下の単語を検索 |

## 編集

| キー | 説明 |
|------|------|
| `<leader>/` | 行コメントトグル |
| `<leader>?` | ブロックコメントトグル |
| `<C-j>` / `<C-k>` | 行を上下に移動 (visual) |
| `<` / `>` | インデント (visual, 選択維持) |
| `jk` | ESC (insert/terminal) |

## バッファ

| キー | 説明 |
|------|------|
| `<S-h>` / `[b` | 前のバッファ |
| `<S-l>` / `]b` | 次のバッファ |

## テスト (neotest)

| キー | 説明 |
|------|------|
| `<leader>tt` | 現在ファイルのテスト実行 |
| `<leader>tT` | 全テスト実行 |
| `<leader>tr` | 最寄りのテスト実行 |
| `<leader>tl` | 最後のテストを再実行 |
| `<leader>ts` | サマリー表示トグル |
| `<leader>to` | 出力表示 |
| `<leader>tS` | テスト停止 |

## デバッグ (DAP)

| キー | 説明 |
|------|------|
| `<leader>dc` | 続行 |
| `<leader>dO` | ステップオーバー |
| `<leader>di` | ステップイン |
| `<leader>do` | ステップアウト |
| `<leader>db` | ブレークポイント トグル |
| `<leader>dB` | 条件付きブレークポイント |
| `<leader>dr` | REPL |
| `<leader>dt` | 終了 |

## Overlook (定義プレビュー)

| キー | 説明 |
|------|------|
| `<CR>` | プレビューから元ウィンドウで開く |
| `;` | プレビューを縦分割で開く |
| `<leader>pu` | 最後のポップアップを復元 |
| `<leader>pU` | 全ポップアップを復元 |
| `<leader>pc` | 全ポップアップを閉じる |
| `<leader>ps` | ポップアップを水平分割で開く |
| `<leader>pv` | ポップアップを縦分割で開く |
| `<leader>pt` | ポップアップを新規タブで開く |
