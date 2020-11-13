class ShoeSize < ApplicationRecord
  enum size: { US5: 0, US6: 1, US7: 2, US8: 3, US9: 4, US10: 5, US11: 6, US12: 7, US13: 8 }
end
