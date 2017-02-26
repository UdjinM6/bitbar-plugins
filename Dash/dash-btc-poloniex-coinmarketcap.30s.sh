#!/bin/bash

# <bitbar.title>Dash tickers: Coinmarketcap and Poloniex</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>UdjinM6</bitbar.author>
# <bitbar.author.github>UdjinM6</bitbar.author.github>
# <bitbar.desc>Shows the latest Dash info from Coinmarketcap and Poloniex</bitbar.desc>
# <bitbar.abouturl>https://www.dash.org/</bitbar.abouturl>
#
# Install:
# bitbar://openPlugin?title=Dash%20Tickers:%20Coinmarketcap%20and%20Poloniex&src=https://raw.githubusercontent.com/UdjinM6/bitbar-plugins/Dash/Dash/dash-btc-poloniex-coinmarketcap.30s.sh
# 

iconBase64='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'

infoPoloniex=$(curl -s https://poloniex.com/public?command=returnTicker | tr '}' '\n' | grep BTC_DASH | tr -d '{}"' | tr ':,' '\n')
infoCoinmarketcap=$(curl -s https://api.coinmarketcap.com/v1/ticker/dash/ | tr -d '{}[]", ' | tr ':' '\n')

printf "%.*f | dropdown=false image=%s\n" 4 $(echo "$infoPoloniex" | grep -A1 last | tail -1) "$iconBase64"
# printf "$%.*f | dropdown=false image=%s\n" 2 $(echo "$infoCoinmarketcap" | grep -A1 price_usd | tail -1) "$iconBase64"

echo "---"
echo ":chart_with_upwards_trend: Coinmarketcap: | href=\"http://coinmarketcap.com/currencies/dash/\""
percent_change_24h=$(echo "$infoCoinmarketcap" | grep -A1 percent_change_24h | tail -1)
[ $(echo $percent_change_24h '>=' 0 | bc -l) -gt 0 ] && colorCoinmarketcap="green" || colorCoinmarketcap="red"
printf "%sRank: %.*f | color=black\n" "* " 0 $(echo "$infoCoinmarketcap" | grep -A1 rank | tail -1)
available_supply=$(echo "$infoCoinmarketcap" | grep -A1 available_supply | tail -1)
available_supply_mln=$(echo "$available_supply / 1000000" | bc -l)
printf "%sSupply: %.*fM DASH | color=black\n" "* " 2 $available_supply_mln
market_cap_usd=$(echo "$infoCoinmarketcap" | grep -A1 market_cap_usd | tail -1)
market_cap_usd_mln=$(echo "$market_cap_usd / 1000000" | bc -l)
printf "%sMarket Cap: $%.*fM | color=$colorCoinmarketcap\n" "* " 2 $market_cap_usd_mln
printf "%sPrice: $%.*f | color=$colorCoinmarketcap\n" "* " 2 $(echo "$infoCoinmarketcap" | grep -A1 price_usd | tail -1)
printf "%s24h Change: %.*f%% | color=$colorCoinmarketcap\n" "* " 2 $percent_change_24h
volume_usd=$(echo "$infoCoinmarketcap" | grep -A1 24h_volume_usd | tail -1)
volume_usd_k=$(echo "$volume_usd / 1000" | bc -l)
printf "%s24h Volume: $%.*fK | color=black\n" "* " 2 $volume_usd_k
last_updated=$(echo "$infoCoinmarketcap" | grep -A1 last_updated | tail -1)
last_updated_diff=$(($(date +%s)-$last_updated))
printf "%sUpdated %.*f seconds ago\n" "" 0 $last_updated_diff

echo "---"
echo ":chart_with_upwards_trend: Poloniex: | href=\"https://poloniex.com/exchange#btc_dash\""
percentChange=$(echo "$infoPoloniex" | grep -A1 percentChange | tail -1)
percentChange100=$(echo "$percentChange * 100" | bc -l)
[ $(echo $percentChange100 '>=' 0 | bc -l) -gt 0 ] && colorPoloniex="green" || colorPoloniex="red"
printf "%sPrice: %.*f BTC | color=$colorPoloniex\n" "* " 4 $(echo "$infoPoloniex" | grep -A1 last | tail -1)
printf "%sAsk: %.*f BTC | color=black\n" "* " 4 $(echo "$infoPoloniex" | grep -A1 lowestAsk | tail -1)
printf "%sBid: %.*f BTC | color=black\n" "* " 4 $(echo "$infoPoloniex" | grep -A1 highestBid | tail -1)
printf "%s24h Change: %.*f%% | color=$colorPoloniex\n" "* " 2 $percentChange100
printf "%s24h Volume: %.*f BTC | color=black\n" "* " 2 $(echo "$infoPoloniex" | grep -A1 baseVolume | tail -1)
quoteVolume=$(echo "$infoPoloniex" | grep -A1 quoteVolume | tail -1)
quoteVolumeK=$(echo "$quoteVolume / 1000" | bc -l)
printf "%s24h Volume: %.*fK DASH | alternate=true color=black\n" "* " 0 $quoteVolumeK
printf "%s24h High: %.*f BTC | color=green\n" "* " 4 $(echo "$infoPoloniex" | grep -A1 high24hr | tail -1)
printf "%s24h Low: %.*f BTC | color=red\n" "* " 4 $(echo "$infoPoloniex" | grep -A1 low24hr | tail -1)
echo "---"
echo "Dash.org | href=\"https://www.dash.org\" image=$iconBase64"
echo "--Wallet | href=\"https://www.dash.org/get-dash/\" image=$iconBase64"
echo "--Explorer | href=\"https://explorer.dash.org/\" image=$iconBase64"
echo "--Forum | href=\"https://www.dash.org/forum/\" image=$iconBase64"
echo "--Wiki | href=\"https://www.dash.org/wiki/\" image=$iconBase64"
