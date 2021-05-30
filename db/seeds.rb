# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create(name: '茨城')
User.create(name: '群馬')
User.create(name: '埼玉')
User.create(name: '東京')
User.create(name: '群馬')
User.create(name: '千葉')
User.create(name: '神奈川')
User.create(name: '長野')
User.create(name: '山梨')
User.create(name: '静岡')
User.create(name: '愛知')
User.create(name: '岐阜')
User.create(name: '富山')
User.create(name: '石川')
User.create(name: '福井')
User.create(name: '滋賀')
User.create(name: '三重')
User.create(name: '京都')
User.create(name: '奈良')
User.create(name: '大阪')
User.create(name: '和歌山')
User.create(name: '兵庫')
User.create(name: '鳥取')
User.create(name: '岡山')
User.create(name: '島根')
User.create(name: '広島')
User.create(name: '山口')
User.create(name: '香川')
User.create(name: '徳島')
User.create(name: '高知')
User.create(name: '愛媛')
User.create(name: '福岡')
User.create(name: '大分')
User.create(name: '宮崎')
User.create(name: '鹿児島')
User.create(name: '熊本')
User.create(name: '佐賀')
User.create(word: '長崎')
User.create(word: "沖縄")

projects =
[{name: '北海道'},{name: '青森'},{name: '岩手'},
{name: '秋田'},{name: '宮城'},{name: '山形'},
{name: '福島'},{name: '新潟'},{name: '栃木'},
]
Project.create(projects)


Project.create(name: "沖縄プリンスホテル")
