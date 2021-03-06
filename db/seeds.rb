# encoding: UTF-8

videos = ["RsQjC5zVnt8", "uAOR6ib95kQ", "6oqXVx3sBOk", "Mo0ufcrmoEU"]

plan_lectures = [
	["Naturaleza de la Luz", "Teoría Corpuscular ", "Teoría Ondulatoria ", "Espectro electromagnetico ", "Espectro Visible", "Refracción", "Difracción", "Reflección", "La cámara obscura  ", "El ojo humano", "Tarea"],
	["Nacimiento de la Fotografía ", "Siglo XIX", "Primera mitad dell siglo XX", "Fotografía a color", "Fotografía a digital", "Tarea"],
	["Componentes de la Camara DSLR", "Cuerpo ", "Obturador ", "Diafragma", "Sensor", "Objetivos (Lente) ", "Tarea"],
	["De lo analogo a lo digital", "Ventajas de la fotografía digital", "Inmediatez", "Todo en uno", "Bajo costo", "Descarga, Almacenamiento y Visualización", "Formatos digitales de imagen", "Tarea"],
	["Exposición correcta ", "El exposimetro y tipos de exposición", "Apertura", "Velocidad", "Sensibilidad", "Exposiciones equivalentes", "Temperatura de color", "Tarea"],
	["Celular ", "Camaras compactas", "Camaras de sistemas compacto (CSC)", "Camara reflex digital (DSLR) ", "Distancia focal", "Tipos de objetivos", "Modos de exposición", "Tarea", "Menus de la camara *", "Diales de control *"],
	["Henri Cartier Bresson", "Ansel Adams", "Robert Capa", "Man Ray", "Julia Margaret Cameron", "Tarea"],
	["Que es la profundidad de campo ", "Foco selectivo", "Foco total", "Tarea"],
	["Barridos", "Congelados", "Seguimientos", "Pitados con luz", "Tarea "],
	["Que es el ISO ", "Que es el ruido", "Diferencias de sensibilidad del sensor", "ISO bajo", "ISO alto ", "Tarea"],
	["El cuerpo humano y sus proporciones", "Plano completo ", "Plano americano", "Plano medio", "Primer plano", "Toma de detalle", "Plano holandes", "Tarea"],
	["Fotografo 1 ", "Fotografo 2", "Fotografo 3", "Fotografo 4", "Fotografo 5", "Tarea"],
	["Rectangulo Dorado", "Zonas Aureas y numero aureo", "Regla de Tercios ", "Figuras Geometricas ", "Ritmo ", "Gravedad ", "Tarea"],
	["Formatos", "Arreglar archivo Raw", "Ajustes de niveles ", "Ajustes de curvas", "Introducción al histograma", "Tarea"]
]

user = User.create({ name: "Contacto", email: "contacto@codealab.mx", password: "temporal", password_confirmation: "temporal", admin: true })

course = Course.create({ name: 'T1 - (5.6 hr)' })

units = Unit.create([{ course_id: 1, title: "La luz" }, { course_id: 1, title: "Historía de la Fotografía" }, { course_id: 1, title: "La Camara Fotográfica " }, { course_id: 1, title: "Fotografia Digital" }, { course_id: 1, title: "Exposición" }, { course_id: 1, title: "Tipos de Camara " }, { course_id: 1, title: "Fotografos Clásicos" }, { course_id: 1, title: "Diafragma y Profundidad de Campo " }, { course_id: 1, title: "Opturador y la velocidad " }, { course_id: 1, title: "Calidad de Imagen e ISO " }, { course_id: 1, title: "Planos de Encuadre" }, { course_id: 1, title: "Fotografos contemporaneos" }, { course_id: 1, title: "Principios de Composición" }, { course_id: 1, title: "Ajustes Basicos de Photoshop" }])

units.each_with_index do | unit, index|
	indice = 0
	plan_lectures[index].each do |lecture|
		lecture = Lecture.create( name: plan_lectures[index][indice], content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam quos aliquam debitis ipsa ducimus culpa cum nostrum voluptatem vero, assumenda tempore est, mollitia corrupti, impedit possimus eos architecto, adipisci dolorem.", video_url: videos[rand(0..3)] )
		plan = Plan.create( lecture_id: lecture.id, unit_id: unit.id, core: (indice%2==0?true:false) )
		indice+=1
	end
end

Concept.create([{ name: "Inscripción" },{ name: "Mensualidad" }])

user.payments.build( date: Date.today+(rand(0..10).days), quantity: 1200, concept_id: 1, clarification: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum necessitatibus ut sed nemo deserunt iste ullam quia, voluptas architecto accusamus. Libero molestiae ipsam omnis, suscipit similique reprehenderit eaque quibusdam nihil." )

50.times do |time|
	user.payments.build( date: Date.today+(rand(0..10).days), quantity: 600, concept_id: 2, clarification: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum necessitatibus ut sed nemo deserunt iste ullam quia, voluptas architecto accusamus. Libero molestiae ipsam omnis, suscipit similique reprehenderit eaque quibusdam nihil." )
end

user.save