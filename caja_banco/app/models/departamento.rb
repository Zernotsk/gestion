class Departamento < ActiveRecord::Base
  belongs_to :pais

  	validates :descripcion,
			:presence => {
				message: 'Este campo es requerido'},
			:length => { 
				:maximum => 20,
				:too_long => 'debe tener como maximo %{count} caracteres'},
			:format => {
				with: /\A[a-zA-Z]+\z/,
				message: 'Solo permite letras'},
			:uniqueness => {
				message: 'El nombre que desea usar ya a sido utilizado'}

		validates :pais_id,
			:presence => {
				message: 'Este campo es requerido'}
end
