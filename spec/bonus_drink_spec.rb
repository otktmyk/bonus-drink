require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(12)).to eq 17 }
  specify { expect(BonusDrink.total_count_for(24)).to eq (24+8+2+1) }
  specify { expect(BonusDrink.total_count_for(99)).to eq (99+33+11+3+1+1) }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  specify { expect(BonusDrink.total_count_for(-1)).to eq 0 }
  specify { expect(BonusDrink.total_count_for("hoge")).to eq 0 }
end
