module Tokenable
  extend ActiveSupport::Concern

  # included do
  #   before_create :generate_token
  # end

  def generate_token
    self.auth_token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless self.class.exists?(auth_token: random_token)
    end
  end
end