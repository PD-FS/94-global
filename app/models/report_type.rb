class ReportType < ApplicationRecord
  belongs_to :report_category
  belongs_to :report_class
end
