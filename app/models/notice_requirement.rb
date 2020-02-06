class NoticeRequirement < ApplicationRecord
  module Topics
    ABOUT = "About The Notices"
    INCLUDE_GENERAL = "What must be included? - General"
    INCLUDE_OPTOUT = "What must be included? - Opt-out"
    INCLUDE_PRIVACY = "What must be included? - Privacy Policy"
    INCLUDE_FINANCIAL = "What must be included? - Financial Incentives"
    OFFLINE_SPECIFIC = "Offline Specific"
    EXEMPTIONS = "Exemptions"
    ADDITIONAL_INFO = "Additional Information About Notices"

    def self.all
      [ABOUT, INCLUDE_GENERAL, INCLUDE_OPTOUT, INCLUDE_PRIVACY, INCLUDE_FINANCIAL, OFFLINE_SPECIFIC, EXEMPTIONS, ADDITIONAL_INFO]
    end
  end
  validates :topic, inclusion: { in: Topics.all }
end
