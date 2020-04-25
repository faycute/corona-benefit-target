# 概要
【コロナ】DockerとVue.jsで30万円給付の対象になるか判定するアプリ  
https://corona-benefit-target.netlify.com/

# 手順
- Docker上にVueプロジェクトを作成する
- 開発
- Netrifyを使ってdeploy及び公開する

# 前提
- Dockerをインストールして起動しておく

# Docker上にVueプロジェクトを作成する
### プロジェクト用ディレクトリの作成
$ mkdir corona-benefit-target
$ cd corona-benefit-target/
### Docker設定ファイルの作成
$ code Dockerfile
$ code docker-compose.yml
### Dockerコンテナイメージのビルド・起動・実行
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec app sh
### コンテナ上でVueプロジェクトの作成（with TypeScript）
/app # vue create .

##### routerあり
Vue CLI v4.3.1
? Generate project in current directory? Yes

Vue CLI v4.3.1
? Please pick a preset: Manually select features
? Check the features needed for your project: Babel, TS, Router, Linter
? Use class-style component syntax? Yes
? Use Babel alongside TypeScript (required for modern mode, auto-detected polyfills, transpiling JSX)? Yes
? Use history mode for router? (Requires proper server setup for index fallback in production) Yes
? Pick a linter / formatter config: Basic
? Pick additional lint features: Lint on save
? Where do you prefer placing config for Babel, ESLint, etc.? In dedicated config files
? Save this as a preset for future projects? No
? Pick the package manager to use when installing dependencies: NPM

### vuetifyの追加
/app # vue add vuetify

? Choose a preset: Default (recommended)

tsconfig.jsonのtypesにvuetifyを追加
```
"types": [
    "webpack-env",
    "vuetify"
],
```

### ローカルサーバーを起動
/app # npm run serve

http://localhost:5555 にアクセス


# Netrifyを使ってdeploy及び公開する
/app # npm run build

Netrifyにサインアップして、distディレクトリをドラッグ＆ドロップ

