class Taxi < ActiveHash::Base

  self.data = [
    {id: 1, name: 'ノーマルタクシー'}, {id: 2, name: "ジャンボタクシー"}, {id: 3, name: "アルファードタクシー"},
    {id: 4, name: "ケアタクシー"}, {id: 5, name: "ママケアタクシー"}, {id: 6, name: "キッズケアタクシー"}
  ]
  
end
