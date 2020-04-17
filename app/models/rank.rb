class Rank < ActiveHash::Base

  self.data = [
    {id: 1, name: '一般会員'}, {id: 2, name: "シルバー会員"}, {id: 3, name: "ゴールド会員"},
    {id: 4, name: "プラチナ会員"}
  ]
  
end
