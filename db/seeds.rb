# encoding: UTF-8

User.create({ name: "Contacto", email: "contacto@codealab.mx", password: "temporal", password_confirmation: "temporal", admin: true })

course = Course.new({ name: 'T1 - (5.6 hr)' })

Unit.create([{ course_id: 1, title: "La luz" }, { course_id: 1, title: "Historía de la Fotografía" }, { course_id: 1, title: "La Camara Fotográfica " }, { course_id: 1, title: "Fotografia Digital" }, { course_id: 1, title: "Exposición" }, { course_id: 1, title: "Tipos de Camara " }, { course_id: 1, title: "Fotografos Clásicos" }, { course_id: 1, title: "Diafragma y Profundidad de Campo " }, { course_id: 1, title: "Opturador y la velocidad " }, { course_id: 1, title: "Calidad de Imagen e ISO " }, { course_id: 1, title: "Planos de Encuadre" }, { course_id: 1, title: "Fotografos contemporaneos" }, { course_id: 1, title: "Principios de Composición" }, { course_id: 1, title: "Ajustes Basicos de Photoshop" }])

Lecture.create([{ name: "Naturaleza de la Luz" }, { name: "Teoría Corpuscular " }, { name: "Teoría Ondulatoria " }, { name: "Espectro electromagnetico " }, { name: "Espectro Visible" }, { name: "Refracción" }, { name: "Difracción" }, { name: "Reflección" }, { name: "La cámara obscura  " }, { name: "El ojo humano" }, { name: "Tarea" }])
Lecture.create([{ name: "Nacimiento de la Fotografía " }, { name: "Siglo XIX" }, { name: "Primera mitad dell siglo XX" }, { name: "Fotografía a color" }, { name: "Fotografía a digital" }, { name: "Tarea" }])
Lecture.create([{ name: "Componentes de la Camara DSLR" }, { name: "Cuerpo " }, { name: "Obturador " }, { name: "Diafragma" }, { name: "Sensor" }, { name: "Objetivos (Lente) " }, { name: "Tarea" }])
Lecture.create([{ name: "De lo analogo a lo digital" }, { name: "Ventajas de la fotografía digital" }, { name: "Inmediatez" }, { name: "Todo en uno" }, { name: "Bajo costo" }, { name: "Descarga, Almacenamiento y Visualización" }, { name: "Formatos digitales de imagen" }, { name: "Tarea" }])
Lecture.create([{ name: "Exposición correcta " }, { name: "El exposimetro y tipos de exposición" }, { name: "Apertura" }, { name: "Velocidad" }, { name: "Sensibilidad" }, { name: "Exposiciones equivalentes" }, { name: "Temperatura de color" }, { name: "Tarea" }])
Lecture.create([{ name: "Celular " }, { name: "Camaras compactas" }, { name: "Camaras de sistemas compacto (CSC)" }, { name: "Camara reflex digital (DSLR) " }, { name: "Distancia focal" }, { name: "Tipos de objetivos" }, { name: "Modos de exposición" }, { name: "Tarea" }, { name: "Menus de la camara *" }, { name: "Diales de control *" }])
Lecture.create([{ name: "Henri Cartier Bresson" }, { name: "Ansel Adams" }, { name: "Robert Capa" }, { name: "Man Ray" }, { name: "Julia Margaret Cameron" }, { name: "Tarea" }])
Lecture.create([{ name: "Que es la profundidad de campo " }, { name: "Foco selectivo" }, { name: "Foco total" }, { name: "Tarea" }])
Lecture.create([{ name: "Barridos" }, { name: "Congelados" }, { name: "Seguimientos" }, { name: "Pitados con luz" }, { name: "Tarea " }])
Lecture.create([{ name: "Que es el ISO " }, { name: "Que es el ruido" }, { name: "Diferencias de sensibilidad del sensor" }, { name: "ISO bajo" }, { name: "ISO alto " }, { name: "Tarea" }])
Lecture.create([{ name: "El cuerpo humano y sus proporciones" }, { name: "Plano completo " }, { name: "Plano americano" }, { name: "Plano medio" }, { name: "Primer plano" }, { name: "Toma de detalle" }, { name: "Plano holandes" }, { name: "Tarea" }])
Lecture.create([{ name: "Fotografo 1 " }, { name: "Fotografo 2" }, { name: "Fotografo 3" }, { name: "Fotografo 4" }, { name: "Fotografo 5" }, { name: "Tarea" }])
Lecture.create([{ name: "Rectangulo Dorado" }, { name: "Zonas Aureas y numero aureo" }, { name: "Regla de Tercios " }, { name: "Figuras Geometricas " }, { name: "Ritmo " }, { name: "Gravedad " }, { name: "Tarea" }])
Lecture.create([{ name: "Formatos" }, { name: "Arreglar archivo Raw" }, { name: "Ajustes de niveles " }, { name: "Ajustes de curvas" }, { name: "Introducción al histograma" }, { name: "Tarea" }])