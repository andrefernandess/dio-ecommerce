module FornecedoresHelper
  def formatar_data(data)
    data.strftime("%d/%m/%Y %H:%M")
  end
end
