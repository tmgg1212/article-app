# テーブル設計

## アプリケーション概要

　情報サイト

## URL



## テストアカウント

test@com  aaa111

## 利用方法

ユーザー登録　記事投稿　

## 目指した課題解決

メディアの作り方や新しい機能の表示方法

## 洗い出した要件

記事の表示　投稿　ページ割け

## 実装した機能についてのGIFと説明


## 実装予定の機能

PV数　ページ割り

## データベース設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | unique: true, null: false |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :articles



## articles テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| text         | text       | null: false                    |
| category     | string     | null: false                    |


### Association

- belongs_to :user

## ローカルでの動作方法

