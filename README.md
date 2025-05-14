# 歩行情報・歩行軌跡 DB

> [!IMPORTANT]
> 環境変数は[こちらから](https://kjlb.esa.io/posts/6068)確認してください

## コマンド説明

#### 1. Docker ネットワークの作成

すでに作成してあるならこの手順は飛ばしてください

```
make create-network
```

### 2. DB コンテナの立ち上げ

```
make up
```

### DB にログイン

```
make db
```

### その他

#### DB に入るデータを確認する

```
cd src/walking-information-walking-trajectory-db
```

```
make db-login
```

SQL を用いてデータを確認

```sql
SELECT * from estimated_positions;
```

#### DB 詳細を確認

> [!NOTE]
> 予め`DBコンテナの立ち上げ`を完了してから実行してください

```
make spy-up
```

`http://localhost:8089/`にアクセスする

## ドキュメント

- [MinIO パケット構成](https://kjlb.esa.io/posts/6661)
