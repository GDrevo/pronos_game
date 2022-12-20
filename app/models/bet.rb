class Bet < ApplicationRecord
  belongs_to :match
  belongs_to :user
  validates :prono, presence: true

  def compute_score
    prono = self.prono
    result = self.result
    @prono_vdn = calculate_prono
    @result_vdn = calculate_result
    calculate_bet_score
    save!
  end

  private

  def calculate_bet_score
    if @prono_vdn == @result_vdn
      if ( 3* ((prono.chars[0].to_i - result.chars[0].to_i).abs + (prono.chars[2].to_i - result.chars[2].to_i).abs)) < 10
        self.score = 10 - ( 3* ((prono.chars[0].to_i - result.chars[0].to_i).abs + (prono.chars[2].to_i - result.chars[2].to_i).abs))
      else
        self.score = 0
      end
    else
      self.score = 0
    end
  end

  def calculate_prono
    prono_h = prono.chars[0].to_i
    prono_a = prono.chars[2].to_i
    if prono_h > prono_a
      "V"
    elsif prono_h < prono_a
      "D"
    else
      "N"
    end
  end

  def calculate_result
    result_h = result.chars[0].to_i
    result_a = result.chars[2].to_i
    if result_h > result_a
      "V"
    elsif result_h < result_a
      "D"
    else
      "N"
    end
  end
end
