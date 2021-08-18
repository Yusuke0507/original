# テーブル設計

## users テーブル

| Column             | type    | Options                |
| ------------------ | ------- | ---------------------- |
| encrypted_password | string  | NOT NULL               |
| email              | string  | NOT NULL, unique: true |
| nickname           | string  | NOT NULL               |
| phone              | string  | NOT NULL               |
| postal_code        | string  | NOT NULL               |
| prefecture         | string  | NOT NULL               |
| municipality       | string  | NOT NULL               |
| address            | string  | NOT NULL               |
| building           | string  |                        |

### Association

- has_many :orders
- has_one :reservations

## reservations テーブル

 | Column | Type       | Options                     |
 | ------ | ---------- | --------------------------- |
 | user   | references | NOT NULL, foreign_key: true |

 ### Association

 - belongs_to :user

 ### items テーブル

 | Column | Type       | Options                     |
 | ------ | ---------- | --------------------------- |
 | user   | references | NOT NULL, foreign_key: true |

 ### Association

 - belongs_to :user
