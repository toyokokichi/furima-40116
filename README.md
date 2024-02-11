## users テーブル

|Column              |Type   |Options                   |
|------              |----   |-------                   |
|nickname            |string |null: false               |
|email               |string |null: false, unique: true |
|password            |string |null: false               |
|last_name           |string |null: false               |
|first_name          |string |null: false               |
|katakana_last_name  |string |null: false               |
|katakana_first_name |string |null: false               |
|birthdate           |string |null: false               |


### Association
- has_many :items
- has_many :orders

## items テーブル

|Column              |Type       |Options                        |
|------              |----       |-------                        |
|item_name           |string     |null: false                    |
|description         |text       |null: false                    |
|category            |string     |null: false                    |
|condition           |string     |null: false                    |
|shipping_fee_detail |string     |null: false                    |
|shipping_origin     |string     |null: false                    |
|shipping_days       |string     |null: false                    |
|price               |integer    |null: false                    |
|user                |references |null: false, foreign_key: true |


### Association
- belongs_to :users
- has_one :orders

## orders テーブル

|Column |Type       |Options                        |
|------ |----       |-------                        |
|user   |references |null: false, foreign_key: true |
|item   |references |null: false, foreign_key: true |


### Association
- belongs_to :users
- belongs_to :items
- has_one :addresses

## addresses テーブル

|Column         |Type       |Options                        |
|------         |----       |-------                        |
|postal_code    |string     |null: false                    |
|prefecture     |string     |null: false                    |
|city           |string     |null: false                    |
|street_address |string     |null: false                    |
|building_name  |string     |null: false                    |
|phone_nember   |string     |null: false                    |
|order          |references |null: false, foreign_key: true |


### Association
- belongs_to :orders