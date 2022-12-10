# Paper Memories 非公式日本語化パッチ

Steam版[Finding Paradise](https://store.steampowered.com/app/337340/Finding_Paradise/)のDLCである[Paper Memories - Comics from Finding Paradise & To the Moon](https://store.steampowered.com/app/1028530/Paper_Memories__Comics_from_Finding_Paradise__To_the_Moon/)を日本語化する非公式パッチです。

## 概要

このパッチは、元画像をベースに日本語化したセリフ画像を重ねて生成する作業を自動化したものです。

正常に動作しない場合でも、画像編集ソフト等を利用して手動で画像を重ねればお楽しみいただけます。

## 動作確認環境

- Windows 10 Home
- Linux Mint 18

## 事前準備

[Imagemagick](https://imagemagick.org/script/download.php)

お手元の環境に応じてWindows版かLinux版をインストールしてください。

Windows版の場合、インストールのオプションで `Add application directory to your system path` がチェックされていることを確認してください。

## 使用方法

1. [パッチ](https://github.com/izayoi256/paper-memories-ja/archive/refs/heads/master.zip)をダウンロードして解凍します。
2. Steamのライブラリで `Finding Paradise` を右クリックし `管理 > ローカルファイルを閲覧` をクリックします。
3. `Paper Memories_Comic` ディレクトリの中に、解凍したパッチファイルを設置します。
   - `Paper Memories` ディレクトリと `translate.bat` が同じディレクトリ内に存在するようにしてください。
4. パッチファイルを実行する。
   - Windowsの場合: `translate.bat` を実行。
   - Linuxの場合: `translate.sh` を実行。
5. `output` ディレクトリに、パッチを適用した画像が出力されます。
