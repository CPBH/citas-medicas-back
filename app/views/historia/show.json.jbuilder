json.data do
    json.usuario do
      json.id @historia.id
      json.numeroDocumento @historia.numeroDocumento
      json.tipoDocumento @historia.enfermedades
      json.nombre @historia.medicamentos
      json.apellido @historia.cirugias
      json.nombre @historia.antecedentes
      json.apellido @historia.resultados
    end
  end