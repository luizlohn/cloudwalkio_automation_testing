Dado("que eu tenho autenticação do DataDog") do
  @from = Time.now - 3600
end

Quando("eu consultar o alarme xxx") do
  # get points from the last hour
  to = Time.now

  query = 'sum:metric.count{*}.as_count()'
  @consulta = $dog.get_points(query, @from, to)
end

Então("retornar sucesso") do
  expect(@consulta[0].to_i).to eq(200)
end
