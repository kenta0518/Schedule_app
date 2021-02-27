class User < ApplicationRecord
    validates :memo ,:title,{presence:true}
    validates :memo,{length: {maximum:140}}
end
