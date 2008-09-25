class SurveyRequest < ActionMailer::Base
  def survey_request( survey )
    recipients "tyler@jldtech.org"
    from       "wireless@jldtech.com"
    subject   "Survey Request"
    body      :survey => survey
  end

end
