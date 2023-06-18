import yfinance as yf
ticker = yf.Ticker('GOOGL').info

market_price = ticker['currentPrice']

previous_close_price = ticker['targetHighPrice']
print('Ticker: GOOGL')
print('Market Price:', market_price)
print('Average Close Price:', previous_close_price)