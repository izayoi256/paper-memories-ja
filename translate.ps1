$imagemagick = Get-Command magick -ea SilentlyContinue;
if (!$imagemagick) {
  Write-Warning "Error: Imagemagickがインストールされていません";
  exit 1;
}

$target = 'Paper Memories';
if (!(Test-Path $target)) {
  Write-Warning "Error: `"${target}`"ディレクトリと同じ階層に設置してください";
  exit 1;
}

Write "処理中...";

$cd = Convert-Path .;

$directories = "1. MAIN COMICS", "2. Misc. Artwork", "3. Impostor Factory", "4. Rebate for Merchandise";

foreach ($directory in $directories) {
  $files = Get-ChildItem "$cd\$target\$directory" -Recurse | Where-Object { !$_.PSIsContainer };
  foreach ($src in $files) {
    $src = $src.FullName;
    $rel = $src.Replace($cd, '');
    $dst = "output${rel}";
    $dstDir = "${dst}\..";
    $overlay = "ja${rel}";
    if (!(Test-Path $dstDir)) {
      New-Item $dstDir -ItemType Directory;
    }
    if (Test-Path $overlay) {
      magick convert $src $overlay -composite $dst;
    } else {
      Copy-Item $src $dst;
    }
  }
}

Read-Host "パッチを反映してoutputディレクトリに出力しました。Enterを押して終了";
