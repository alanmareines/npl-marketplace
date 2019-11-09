class Npl < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  mount_uploader :document, DocumentUploader

  def self.collateral_names
    [
      "Alienação Fiduciária - Outros",
      "Alienação Fiduciária de Ações",
      "Alienação Fiduciária de Commodities",
      "Alienação Fiduciária de Equipamentos",
      "Alienação Fiduciária de Imóvel Operacional",
      "Alienação Fiduciária de Imóvel Rural",
      "Alienação Fiduciária de Imóvel Urbano",
      "Aval PF",
      "Aval PJ",
      "CDA/WA",
      "Cessão Fiduciária de Aplicação Financeira",
      "Cessão Fiduciária de Recebíveis a Performar",
      "Cessão Fiduciária de Recebíveis Performados",
      "Fiança Bancária",
      "Fiança PF",
      "Fiança PJ",
      "Hipoteca de Imóvel Operacional",
      "Hipoteca de Imóvel Rural",
      "Hipoteca de Imóvel Urbano",
      "Penhor - Outros",
      "Penhor de Ações",
      "Penhor de Commodities",
      "Outros"
    ]
  end

  def self.npl_type_names
    [
      "ACC",
      "ACE",
      "CCB",
      "CCE",
      "CCI",
      "CDCA",
      "Confissão de Dívida",
      "CPR",
      "CRA",
      "Debêntures",
      "Fiança Honrada",
      "NCE",
      "NP",
      "PPE"
    ]
  end

end
