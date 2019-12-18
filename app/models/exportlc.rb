class Exportlc < ApplicationRecord
	has_many :documents, dependent: :destroy
end
