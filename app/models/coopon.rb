class Coopon < ActiveHash::Base

  self.data = [
    {id: 1, name: 'クーポン１'}, {id: 2, name: "クーポン２"}, {id: 3, name: "クーポン３"},
    {id: 4, name: "クーポン４"}, {id: 5, name: "クーポン５"}
  ]
  
end
