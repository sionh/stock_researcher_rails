class Shikiho < ApplicationRecord
    scope :year_equal, -> (year) { where(year: year) if year.present? }
    scope :quarter_equal, -> (quarter) { where(quarter: quarter) if quarter.present? }
    scope :code_like, -> (code) { where('code LIKE ?', "%#{code}%") if code.present? }
    scope :code_equal, -> (code) { where(code: code) if code.present? }
    scope :comp_name_like, -> (comp_name) { where('comp_name LIKE ?', "%#{comp_name}%") if comp_name.present? }
    scope :feature_like, -> (feature) { where('feature LIKE ?', "%#{feature}%") if feature.present? }
    scope :topic_like, -> (topic) { where('topic LIKE ?', "%#{topic}%") if topic.present? }
    scope :outlook_like, -> (outlook) { where('outlook LIKE ?', "%#{outlook}%") if outlook.present? }
end
