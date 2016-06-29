class Complaint < ActiveRecord::Base
  validates :subject, :complaint_type, :content, presence: true

  TYPES = ['Indisponibilidade de serviço', 'Produtos contratados', 'Qualidade do produto', 'Qualidade do serviço', 'Erro de cobrança', 'Atendimento'].freeze
end
