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

### DB 詳細を確認

> [!NOTE]
> 予め`DBコンテナの立ち上げ`を完了してから実行してください

```
make spy-up
```

`http://localhost:8089/`にアクセする

## ドキュメント

- [MinIO パケット構成](https://kjlb.esa.io/posts/6661)
