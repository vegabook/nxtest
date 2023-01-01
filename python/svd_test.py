import requests
import numpy as np
import datetime as dt

finurl = "https://raw.githubusercontent.com/vegabook/nxtest/main/priv/data/dfc.csv"

def test_svd(url = finurl):
    data = requests.get(finurl)
    body = data.content
    rows = list(filter(lambda x: x != "", body.decode().split("\n")))
    numbers = [[float(i) for i in x.split(",")] for x in rows]
    npa = np.array(numbers)
    nowtime = dt.datetime.utcnow()
    svd = np.linalg.svd(npa)
    time_taken = (dt.datetime.utcnow() - nowtime).total_seconds()
    print(time_taken)
    seconds = time_taken
    print(svd[1])
    print(f"Python time taken: {seconds} seconds")

if __name__ == "__main__":
    test_svd()

