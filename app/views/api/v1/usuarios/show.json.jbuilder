json.data do
  json.usuario do
    json.id @usuario.id
    json.tipoDocumento @usuario.tipoDocumento
    json.numeroDocumento @usuario.numeroDocumento
    json.nombre @usuario.nombre
    json.apellido @usuario.apellido
  end
end