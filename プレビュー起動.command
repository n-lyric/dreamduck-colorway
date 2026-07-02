#!/bin/bash
# ドリームダック カラバリ仕様書 ローカルプレビュー起動
# ダブルクリックで localhost サーバーを立て、ブラウザで開きます。
# （3Dプレビューは file:// 直開きだと読み込めないため、この経由で開いてください）

cd "$(dirname "$0")" || exit 1

PORT=8765
URL="http://localhost:${PORT}/index.html"

echo "======================================"
echo " ドリームダック カラバリ仕様書 プレビュー"
echo " $URL"
echo " 終了するには このウィンドウで Control+C"
echo "======================================"

# 少し待ってからブラウザを開く
( sleep 1; open "$URL" ) &

# Python3 の簡易HTTPサーバー
python3 -m http.server ${PORT}
