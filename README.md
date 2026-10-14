# Dhessir Consultant · WordPress (CMS)

Sitio de **Dhessir Consultant** construido en WordPress y maquetado desde el panel con Elementor.

Taller Práctico CMS · Diseño y Programación Web · UNILATINA · 2026-II

## Entorno

| Pieza | Versión |
|---|---|
| Ubuntu sobre WSL 2 · Docker · Lando | `recipe: wordpress` |
| PHP | 8.2 |
| Base de datos | MariaDB |
| WordPress | es_CO |
| Tema | Hello Elementor |
| Plugins | Elementor, WPForms Lite, Safe SVG |

## Cómo ejecutarlo

```bash
git clone https://github.com/dhessirconsultant-lab/DhessirWP-CMS.git
cd DhessirWP-CMS
lando start
lando wp core download --locale=es_CO
lando wp config create --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --dbhost=database --locale=es_CO
lando db-import database.sql
./scripts/instalar-dependencias.sh
```

- Sitio: https://dhessir-cms.lndo.site
- Panel: https://dhessir-cms.lndo.site/wp-admin

Para actualizar el volcado de la base de datos después de editar en el panel:

```bash
lando db-export database.sql && gunzip -f database.sql.gz
```

## Qué hay en el repositorio

```
.lando.yml                         Receta de Lando
database.sql                       Base de datos (páginas, menú y diseño hecho en Elementor)
scripts/instalar-dependencias.sh   Instala el tema y los plugins con WP-CLI
wp-content/uploads/                Logo, ícono y fotos de la biblioteca de medios
```

El núcleo de WordPress, `wp-config.php`, el tema y los plugins de terceros no se versionan: se descargan con los comandos de arriba.
