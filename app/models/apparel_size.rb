class ApparelSize < ApplicationRecord
  enum size: { XXS: 9, XS: 10, S: 11, M: 12, L: 13, XL: 14, XXL: 15 }
end
