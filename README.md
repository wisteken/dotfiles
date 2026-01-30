# dotfiles

## 1. clone

```shell
git clone git@github.com:wisteken/dotfiles.git ~/
```

## 2. install

```shell
cd ~/dotfiles
chmod +x ./install.sh
./install.sh
```

## Neovim Tips

### Diffview

#### File Panelからの操作

| キー | 説明 |
|------|------|
| `<CR>` / `l` / `o` | 選択中エントリのdiffを開く |
| `<Tab>` | 次のファイルのdiffを開く |
| `<S-Tab>` | 前のファイルのdiffを開く |
| `<C-f>` | viewを下にスクロール |
| `<C-b>` | viewを上にスクロール |
| `<leader>e` | file panelにフォーカスを戻す |

#### 片側だけスクロールしたい場合

1. スクロールしたい側のウィンドウに移動（`<C-w>h` / `<C-w>l`）
2. `:set noscrollbind` でスクロール同期を解除
3. 戻すときは `:set scrollbind`

#### その他

| キー | 説明 |
|------|------|
| `g?` | ヘルプパネルを表示 |
| `:set wrap` | 右端で折り返し有効 |
| `:set nowrap` | 折り返し無効 |
