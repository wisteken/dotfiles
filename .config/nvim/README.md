# Neovim キーマップ チートシート

Leader key: `<Space>`

## ファイル・検索

| キー | 説明 |
|------|------|
| `<leader><leader>` | ファイル検索 (buffers + recent + git_files) |
| `<leader>gf` | Git管理ファイルのみ検索 |
| `<leader>gg` | 全文検索 (grep) |
| `<leader>fe` | ファイルエクスプローラー (Yazi: 現在のファイル) |
| `<leader>fE` | ファイルエクスプローラー (Yazi: cwd) |

## LSP (コードナビゲーション)

| キー | 説明 |
|------|------|
| `gd` | 定義をプレビュー (Lspsaga peek) |
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
| `<leader>gd` | CodeDiff 開く (VSCodeライク) |
| `<leader>gh` | CodeDiff コミット履歴 |
| `<leader>gD` | CodeDiff 閉じる |
| `<leader>gO` | インライン差分オーバーレイ (mini.diff) |
| `<leader>gl` | Git permalink をコピー |
| `<leader>gL` | Git permalink を開く |
| `[h` / `]h` | 前/次のhunk |
| `gh` | hunkを適用 |
| `gH` | hunkをリセット |

### CodeDiff 操作 (diff view内)

| キー | 説明 |
|------|------|
| `t` | インライン/サイドバイサイド切替 |
| `]c` / `[c` | 次/前のhunk |
| `]f` / `[f` | 次/前のファイル |
| `-` | ファイルをstage/unstage |
| `<leader>hs` | hunkをstage |
| `<leader>hu` | hunkをunstage |
| `<leader>hr` | hunkを破棄 |
| `q` | 閉じる |

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

## ターミナル (Neovim内)

| キー | 説明 |
|------|------|
| `Cmd+`` | 下部ターミナル トグル (高さ30%) |
| `Cmd+J` | 右側ターミナル トグル (幅40%) |
| `jk` | ターミナルからノーマルモードへ |

## ウィンドウ・ペイン (Neovim内、tmuxライク)

| キー | 説明 | 旧tmux |
|------|------|--------|
| `<C-w>-` | 水平分割 | `prefix + -` |
| `<C-w>\|` | 垂直分割 | `prefix + \|` |
| `<C-w>h/j/k/l` | ペイン移動 | `prefix + h/j/k/l` |
| `<C-w>H/J/K/L` | ペインリサイズ (5単位) | `prefix + H/J/K/L` |
| `<C-w>q` | ペインを閉じる | `prefix + q` |
| `<C-w>Q` | バッファごと閉じる | `prefix + Q` |
| `<C-w>\\` | 最後のアクティブペインへ | — |
| `<C-w>Space` | 次のペインへ | `C-o` |
| `<C-w>=` | ペインサイズを均等化 | — |

## tmux (session/window管理のみ)

| キー | 説明 |
|------|------|
| `C-b c` | 新しいウィンドウ作成 |
| `C-b n` / `C-b p` | 次/前のウィンドウ |
| `C-b 0-9` | ウィンドウ番号で移動 |
| `C-b ,` | ウィンドウ名を変更 |
| `C-b Q` | ウィンドウを終了 |
| `C-b d` | セッションからデタッチ |
| `C-b s` | セッション一覧 |
| `C-b $` | セッション名を変更 |
| `C-b w` | ウィンドウ一覧 (セッション横断) |

## Cmd キー (Ghostty → tmux → Neovim)

| キー | 説明 |
|------|------|
| `Cmd+P` | ファイル検索 |
| `Cmd+Shift+F` | 全文検索 |
| `Cmd+Shift+P` | コマンドパレット |
| `Cmd+B` | サイドバートグル |
| `Cmd+/` | コメントトグル |
| `Cmd+`` | 下部ターミナルトグル |
| `Cmd+J` | 右側ターミナルトグル |

## バッファ

| キー | 説明 |
|------|------|
| `<S-h>` / `[b` | 前のバッファ |
| `<S-l>` / `]b` | 次のバッファ |
