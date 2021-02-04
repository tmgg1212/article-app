class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '風景' },
    { id: 3, name: '動物' },
    { id: 4, name: 'グルメ' },
    { id: 5, name: '日常' },
    { id: 6, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :articles
  end