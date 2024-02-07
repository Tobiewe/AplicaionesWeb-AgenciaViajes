-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2023 a las 11:37:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `destino_id` int(11) DEFAULT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `comentario` text NOT NULL,
  `fecha_comentario` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `destino_id`, `nombre_usuario`, `comentario`, `fecha_comentario`) VALUES
(1, 1, 'Usuario1', '¡Me encantó este destino! La comida y la gente son increíbles.', '2023-11-06 09:30:00'),
(9, 1, 'Usuario2', '¡Me encantó este destino! La comida y la gente son increíbles.', '2023-11-06 09:30:00'),
(10, 1, 'Admin1', 'Me ha encantado', '2023-11-06 10:37:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'Playa de Cancún', 'Descubre la sublime belleza de la Playa de Cancún, donde las suaves arenas blancas acarician tus pies mientras las aguas turquesas del Caribe besan la costa. Este viaje de ensueño te invita a sumergirte en el lujo y la relajación. Durante tus días en Cancún, podrás explorar las antiguas ruinas mayas cercanas, maravillarte con cenotes ocultos y vivir la vibrante vida nocturna de la ciudad. Relájate bajo el sol tropical y explora la rica cultura maya en las cercanías, visitando antiguas ruinas y cenotes ocultos.', 'https://www.barcelo.com/guia-turismo/wp-content/uploads/2021/03/riviera-maya-cancun-pal.jpg', 500.00),
(2, 'Torre Eiffel, París', 'La majestuosa Torre Eiffel, un ícono de París, te ofrece vistas panorámicas de la ciudad de la luz. Sumérgete en la historia del arte y la cultura parisina mientras paseas por los encantadores bulevares, disfrutas de la deliciosa cocina francesa y exploras museos de renombre mundial como el Louvre. Vive la magia de París mientras te maravillas con la elegancia de la Torre Eiffel.', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Paris_-_Eiffelturm_und_Marsfeld2.jpg', 75.50),
(3, 'Machu Picchu, Perú', 'Embárcate en una aventura arqueológica en Machu Picchu, la antigua ciudad inca enclavada en los Andes peruanos. Maravíllate con la arquitectura ingeniosa y disfruta de la belleza natural que la rodea. Explora los misterios de la civilización inca mientras te sumerges en la energía única de este lugar. Descubre los secretos de los incas y déjate cautivar por la majestuosidad de Machu Picchu.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Machu_Picchu%2C_Peru_%282018%29.jpg/400px-Machu_Picchu%2C_Peru_%282018%29.jpg', 200.00),
(4, 'Gran Cañón, EE.UU.', 'Contempla la grandeza de la naturaleza en el impresionante Gran Cañón en Estados Unidos. Las majestuosas formaciones rocosas y los paisajes deslumbrantes te dejarán sin aliento. Explora senderos escénicos, realiza emocionantes actividades al aire libre y captura vistas inolvidables en este espectacular destino. Vive la aventura en el Gran Cañón y descubre la belleza intemporal de este lugar único en la Tierra.', 'https://grandcanyonwest.com/wp-content/uploads/SkwalkHero_B.jpg', 120.75),
(5, 'Santorini, Grecia', 'Descubre la magia de Santorini, una isla con arquitectura única en Grecia. Explora encantadores pueblos blancos con tejados azules, disfruta de impresionantes vistas al mar Egeo y relájate en playas de arena volcánica. Admira hermosos atardeceres y sumérgete en la rica historia y cultura de esta isla cautivadora. Santorini te espera con sus paisajes de ensueño y su encanto sin igual.', 'https://cdn-3.expansion.mx/dims4/default/ea8e170/2147483647/strip/true/crop/900x580+0+0/resize/1200x773!/format/webp/quality/60/?url=https%3A%2F%2Fcdn-3.expansion.mx%2F92%2F921b3e3b832955a23cc7baf7dfc74aae%2FSantorini-Grecia.jpg', 350.00),
(6, 'Gran Muralla China', 'Embárcate en un viaje a través de la historia en la Gran Muralla China, una maravilla arquitectónica histórica. Recorre kilómetros de murallas antiguas, torres de vigilancia y paisajes impresionantes. Sumérgete en la riqueza cultural de China mientras exploras este icónico sitio, testigo de siglos de civilización. Explora la grandeza de la Gran Muralla y vive una experiencia única en la historia china.', 'https://static.nationalgeographicla.com/files/styles/image_3200/public/nationalgeographic2710344.jpg?w=1900&h=1272', 180.25),
(7, 'Bora Bora, P.F.', 'Sumérgete en un paraíso tropical en el Pacífico con una escapada a Bora Bora, Polinesia Francesa. Relájate en lujosos bungalows sobre el agua, nada en aguas cristalinas y descubre la rica vida marina. Disfruta de la serenidad de las playas de arena blanca y explora la belleza natural de esta isla paradisíaca. Bora Bora te invita a vivir momentos de paz y belleza en un entorno de ensueño.', 'https://imagenes.elpais.com/resizer/AL_nzRr8ImurbojoC6T2q4QYoPU=/1960x1470/filters:focal(734x629:744x639)/cloudfront-eu-central-1.images.arcpublishing.com/prisa/KAJZQ2KMBZH35BKMXIOIMD23X4.jpg', 750.00),
(8, 'Marrakech, Marruecos', 'Sumérgete en la ciudad de Marrakech, llena de colores y cultura en Marruecos. Explora los bulliciosos zocos, maravíllate con la arquitectura exquisita y descubre la rica tradición culinaria del norte de África. Visita palacios antiguos, mezquitas impresionantes y jardines exuberantes mientras te sumerges en la esencia de Marrakech. Marrakech te espera con su hospitalidad y su encanto tradicional.', 'https://images.musement.com/cover/0153/55/marrakech-jpg_header-15254531.jpg?w=1200&h=630&q=95&fit=crop', 280.00),
(9, 'Egipto', 'Descubre las pirámides, lo más icónico de Egipto. Explora la antigua civilización egipcia mientras te maravillas con las maravillas arquitectónicas como las pirámides de Giza y la Esfinge. Sumérgete en la historia antigua y explora los tesoros de los faraones en los museos y sitios arqueológicos de este país fascinante. Egipto te invita a un viaje a través del tiempo y la cultura.', 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Egypt.Giza.Sphinx.02.jpg', 280.00),
(10, 'Nueva York, EE.UU.', 'Descubre la energía inigualable de la Gran Manzana en Nueva York, Estados Unidos. Explora rascacielos emblemáticos, disfruta de espectáculos en Broadway, pasea por Central Park y visita museos de clase mundial como el Museo Metropolitano de Arte. Vive el estilo de vida vibrante de Nueva York en cada esquina. Nueva York te espera con su diversidad y su espíritu inquebrantable.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1200px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg', 450.00),
(11, 'Roma, Italia', 'Explora la cuna de la civilización en Roma, Italia. Sumérgete en la historia antigua mientras visitas el Coliseo, el Foro Romano y el Panteón. Disfruta de la deliciosa comida italiana, maravíllate con el arte renacentista y lánzate a la Fontana di Trevi para cumplir tus deseos en esta ciudad eterna. Roma te invita a un viaje cultural lleno de historia y pasión.', 'https://img2.rtve.es/i/?w=1600&i=1674749554354.jpg', 300.00),
(12, 'Bangkok, Tailandia', 'Embárcate en una experiencia cultural en Bangkok, la ciudad de los templos en Tailandia. Explora templos impresionantes como el Wat Arun y el Wat Pho, disfruta de la animada escena nocturna en Khao San Road y prueba la deliciosa comida callejera. Sumérgete en la espiritualidad y la autenticidad de esta fascinante ciudad asiática. Bangkok te espera con su misticismo y su vitalidad.', 'https://content.r9cdn.net/rimg/dimg/26/5b/01e97574-city-26166-1592813274a.jpg?width=1366&height=768&xhint=1038&yhint=725&crop=true', 220.00),
(13, 'Sídney, Australia', 'Maravíllate con la belleza de Sídney, una maravilla en Oceanía. Explora la famosa Ópera de Sídney, relájate en las playas de arena dorada y descubre la fauna única de Australia en el Zoológico Taronga. Sumérgete en la vibrante cultura australiana mientras disfrutas de la vida urbana y la naturaleza exuberante de esta ciudad costera. Sídney te invita a descubrir su encanto y su diversidad.', 'https://gostudyaus.es/wp-content/uploads/2018/09/SYD_header.jpg', 550.00),
(14, 'Dubái, E.A.U.', 'Descubre el lujo y la modernidad en el desierto de Dubái, Emiratos Árabes Unidos. Maravíllate con los rascacielos futuristas, disfruta de compras en lujosos centros comerciales y relájate en playas de arena blanca. Explora el desierto en safaris emocionantes y admira la arquitectura innovadora en esta ciudad cosmopolita. Dubái te espera con su opulencia y su extravagancia.', 'https://enkanaservices.es/wp-content/uploads/2023/01/destacada-vivir-trabajar-dubai.jpg.webp', 700.00),
(15, 'Kioto, Japón', 'Sumérgete en la rica cultura y tradición japonesa en Kioto, Japón. Explora antiguos templos, jardines zen y santuarios sagrados. Disfruta de la ceremonia del té, maravíllate con las geishas y admira los cerezos en flor en primavera. Kioto te invita a un viaje en el tiempo, donde la esencia de Japón cobra vida.', 'https://cdn.getyourguide.com/img/location/5d079d304c0d5.jpeg/99.jpg', 350.00),
(16, 'Barcelona, España', 'Descubre el arte y la arquitectura en cada esquina de Barcelona, España. Visita la famosa Sagrada Familia de Gaudí, pasea por Las Ramblas y explora los encantadores barrios como El Gótico y El Born. Disfruta de la deliciosa comida catalana, maravíllate con las obras maestras de Picasso y Gaudí, y sumérgete en la vida nocturna vibrante de esta ciudad costera.', 'https://media.traveler.es/photos/63838947050e0f92cd80c982/16:9/w_2560%2Cc_limit/GettyImages-1392907424.jpg', 280.00),
(17, 'Cairo, Egipto', 'Explora la historia antigua y el misterio en Cairo, Egipto. Visita las pirámides de Giza, la Esfinge y el Museo Egipcio. Sumérgete en el encanto caótico de los zocos y disfruta de la auténtica cocina egipcia. Cairo te transportará a la época de los faraones mientras te sumerges en la rica cultura e historia de este fascinante país.', 'https://www.egipto.net/f/egipto/egipto/guia/el-cairo.jpg', 320.00),
(18, 'Praga, R. Checa', 'Descubre la ciudad de las cien torres en Praga, República Checa. Explora el encanto medieval del casco antiguo, maravíllate con el Puente de Carlos y visita el imponente Castillo de Praga. Disfruta de la cerveza checa en acogedores bares y descubre la rica herencia cultural de esta ciudad europea única.', 'https://hips.hearstapps.com/hmg-prod/images/praga-portada-1540732106.jpg', 123.70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_destino`
--

CREATE TABLE `imagenes_destino` (
  `id` int(11) NOT NULL,
  `destino_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `imagenes_destino`
--

INSERT INTO `imagenes_destino` (`id`, `destino_id`, `url`) VALUES
(1, 1, 'https://media.viajando.travel/p/a7bbd1d51b0d0276eede80299ee73fbc/adjuntos/236/imagenes/000/541/0000541300/1200x675/smart/cancun-shutterstock_1956007453-jdross75jpg.jpg'),
(2, 2, 'https://vibes.okdiario.com/wp-content/uploads/2023/08/torre-eiffel-curiosidades-1.jpg'),
(3, 3, 'https://www.infobae.com/new-resizer/uVrD2DihnpgrVASGQCZ0ko-V6Fs=/arc-anglerfish-arc2-prod-infobae/public/3ULIHIRHP5BOLFFFU6L6FLTA2E.jpg'),
(5, 5, 'https://lp-cms-production.imgix.net/2021-05/shutterstockRF_1563449509.jpg?auto=format&w=1440&h=810&fit=crop&q=75'),
(6, 6, 'https://www.eluniversal.com.mx/resizer/xCL7roGhhtcJhHQhbFxE7e3xEzs=/1200x740/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/AKQROG6PVVCLXM2NZPLZOKUA5Y.jpg'),
(7, 7, 'https://images.contentstack.io/v3/assets/blt00454ccee8f8fe6b/blt7d6d1039edc8fad1/60ab286f909370737ae497ee/UK_Bora-Bora_French_Polynesia_Header.jpg'),
(8, 8, 'https://images.musement.com/cover/0153/55/marrakech-jpg_header-15254531.jpg?w=1200&h=630&q=95&fit=crop'),
(9, 9, 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Egypt.Giza.Sphinx.02.jpg'),
(10, 10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1200px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg'),
(11, 11, 'https://img2.rtve.es/i/?w=1600&i=1674749554354.jpg'),
(12, 12, 'https://content.r9cdn.net/rimg/dimg/26/5b/01e97574-city-26166-1592813274a.jpg?width=1366&height=768&xhint=1038&yhint=725&crop=true'),
(13, 13, 'https://gostudyaus.es/wp-content/uploads/2018/09/SYD_header.jpg'),
(14, 14, 'https://enkanaservices.es/wp-content/uploads/2023/01/destacada-vivir-trabajar-dubai.jpg.webp'),
(16, 16, 'https://media.traveler.es/photos/63838947050e0f92cd80c982/16:9/w_2560%2Cc_limit/GettyImages-1392907424.jpg'),
(17, 17, 'https://res.cloudinary.com/hello-tickets/image/upload/c_limit,f_auto,q_auto,w_1300/v1658204707/qk70aucga8hjbmm9psbq.jpg'),
(18, 18, 'https://images.hola.com/imagenes/viajes/20210915196086/praga-experiencias-ciudad-alrededores/0-994-736/panoramica-praga-m.jpg?tx=w_680'),
(19, 1, 'https://blog.vivaaerobus.com/wp-content/uploads/2019/12/Mejores-Playas-de-Canc%C3%BAn.jpg'),
(20, 1, 'https://res.cloudinary.com/simpleview/image/upload/v1660238572/clients/quintanaroo/DJI_0184_e430b49c-47d3-4bfc-8403-9fc2df2ac133.jpg'),
(21, 18, 'https://images.hola.com/imagenes/viajes/20200428166812/praga-ciudad-historica-maravillas-desde-mi-pantalla/0-817-199/praga-ciudad-historica-t.jpg'),
(22, 18, 'https://viajesikea.com/wp-content/uploads/2023/07/Praga20Invierno.jpg'),
(23, 17, 'https://passporterapp.com/es/blog/wp-content/uploads/2023/05/que-ver-en-el-cairo-scaled.jpg'),
(24, 17, 'https://static.nationalgeographic.es/files/styles/image_3200/public/resized-gettyimages-1411179963.jpg?w=1600&h=900'),
(25, 2, 'https://viajes.nationalgeographic.com.es/medio/2022/07/13/paris_37bc088a_1280x720.jpg'),
(27, 3, 'https://media.admagazine.com/photos/618a633172049e253173e864/master/w_1600%2Cc_limit/78760.jpg'),
(28, 3, 'https://cdn.mos.cms.futurecdn.net/WFJBpzs4J5x3uvbeKdnm3i-1200-80.jpg'),
(29, 4, 'https://www.elagoradiario.com/wp-content/uploads/2020/01/Gran-Ca%C3%B1%C3%B3n.jpg'),
(30, 4, 'https://lasvegasentuidioma.com/wp-content/uploads/2018/08/convivir-naturaleza-gran-canon.jpg'),
(31, 4, 'https://www.toursalgrancanon.com/wp-content/uploads/2018/11/fotos-espectaculares-gran-canon.jpg'),
(32, 5, 'https://img2.rtve.es/imagenes/calles-del-pueblo-pyrgos-santorini/1629211921523.jpg'),
(33, 5, 'https://www.blogdechollos.com/wp-content/uploads/2023/05/Viaje-a-Santorini-barato-hoteles-baratos-ofertas-en-viajes-chollo.jpg'),
(34, 6, 'https://img.asmedia.epimg.net/resizer/xUawdQLVlAt3qrSuVLEs9ol60sM=/1472x828/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/P466JKSZ7VDSPESFDMU472KKTY.jpeg'),
(35, 6, 'https://fotografias.lasexta.com/clipping/cmsimages01/2023/01/12/6F810954-0A15-4D78-A13D-A0E31AD7BD67/gran-muralla-china_69.jpg?crop=2304,1296,x7,y0&width=1280&height=720&optimize=low&format=jpg'),
(36, 7, 'https://www.hotelscombined.es/rimg/dimg/8b/e5/e0dd60a9-freereg-2000160-16644d965bc.jpg?width=1366&height=768&xhint=1534&yhint=897&crop=true'),
(37, 7, 'https://www.tahitilegends.com/images1/gallery/BOBPBR-aerial7-1200x720_24693.jpg'),
(38, 8, 'https://media.gq-magazine.co.uk/photos/5d138f50976fa31476f39436/16:9/w_2560%2Cc_limit/marrakech-gq-9oct18_istock_b.jpg'),
(39, 8, 'https://res.cloudinary.com/hello-tickets/image/upload/c_limit,f_auto,q_auto,w_1300/v1645503836/cupodi9vxjikag5boq6h.jpg'),
(40, 9, 'https://static.nationalgeographic.es/files/styles/image_3200/public/resized-gettyimages-1411179963.jpg?w=1600&h=900'),
(41, 9, 'https://www.ngenespanol.com/wp-content/uploads/2022/10/piramides-de-egipto-como-se-construyeron-1280x720.jpg'),
(42, 10, 'https://content.r9cdn.net/rimg/dimg/fd/9a/f4a5d916-lm-11128-16df86b6e99.jpg?width=1750&height=1000&xhint=1411&yhint=767&crop=true'),
(43, 10, 'https://res.cloudinary.com/hello-tickets/image/upload/c_limit,f_auto,q_auto,w_1300/v1611654737/f6iafjgrtnia4couhwzx.jpg'),
(44, 16, 'https://img2.rtve.es/imagenes/ciudades-para-siglo-xxi-barcelona-ciudad-vertebrada-2/1561977573130.jpg'),
(45, 11, 'https://www.italia.it/content/dam/tdh/es/interests/lazio/roma/8-cose-imperdibili-per-vivere-il-natale-di-roma-da-veri-local/media/1600X1000_8_cose_imperdibili_natale_di_roma_hero.jpg'),
(46, 11, 'https://www.ngenespanol.com/wp-content/uploads/2023/09/la-obsesion-con-el-imperio-romano-ha-estado-de-moda-por-siglos-incluso-antes-de-su-caida.jpeg'),
(47, 12, 'https://forbes.es/wp-content/uploads/2023/02/Bangkok-tailandia.jpg'),
(48, 12, 'https://i.blogs.es/8aca91/tailandia/1366_2000.jpg'),
(50, 13, 'https://www.lookoutpro.com/wp-content/uploads/2020/03/iStock-1141086837.jpg'),
(51, 14, 'https://www.cloud-europamundo.com/img/carousel/hd/Dubai_20220124131658.jpg'),
(52, 14, 'https://www.civitatis.com/blog/wp-content/uploads/2009/04/blog-guia-dubai.jpg'),
(53, 15, 'https://okdiario.com/img/2019/09/28/todo-lo-que-debes-de-saber-sobre-kioto-antes-de-viajar-a-la-ciudad-de-las-geishas.jpg'),
(54, 15, 'https://estaticos-cdn.prensaiberica.es/clip/a1767182-90e0-402e-9f29-e29ac48a2e7c_alta-aspect-ratio_default_0.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `destino_id` int(11) DEFAULT NULL,
  `usuario_cliente` varchar(255) NOT NULL,
  `fecha_reserva` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `destino_id`, `usuario_cliente`, `fecha_reserva`) VALUES
(22, 1, 'Admin1', '2023-11-11'),
(23, 1, 'Admin1', '2023-11-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `username`, `password`) VALUES
(51, 'Admin', 'Admin', 'Admin1', '$2b$10$opAPmtDqA2iAOnFomjQreuoUDnq5CubaNUcNozHds1b7L/jmcCzEi');
-- Constraseña del Admin1 = Administrador1-
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes_destino`
--
ALTER TABLE `imagenes_destino`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `imagenes_destino`
--
ALTER TABLE `imagenes_destino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`);

--
-- Filtros para la tabla `imagenes_destino`
--
ALTER TABLE `imagenes_destino`
  ADD CONSTRAINT `imagenes_destino_ibfk_1` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
