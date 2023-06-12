# valuation-analyzer

各社から連携される査定物件情報を元に、PriceHubble Valuation API を実行し、レポート作成するプログラム

## 2. ローカルでの開発

ローカルで開発する手順を示します

### 2-1. venv 構築(初回のみ)

ローカルの開発環境を作るため、以下のコードを実行します

```
$ python -m venv venv
$ source venv/bin/activate
$ pip install --upgrade pip
$ pip install -r requirements.txt
```

### 2-2. `docker-compose.yaml`の起動

> 事前時 Docker のインストールが必要です

コマンドラインで以下のように実行して環境へ入ります

```shell
$ bash start-docker.sh
```
