# cafe_utez

Práctica pre-examen Unidad II — Cafetería UTEZ. App Flutter con MVVM en capas
(dominio / datos / presentación), `ChangeNotifier` y `provider`.

## Correr la app

```bash
flutter pub get
flutter run -d chrome
```

## Verificar

Desde esta carpeta (en Windows, con Git Bash):

```bash
flutter test                  # la prueba del ViewModel
bash verificar_practica.sh    # revisión de capas
bash kit/autoevaluar.sh       # puntaje automático (sobre 90)
```

`kit/autoevaluar.sh` trabaja sobre una copia temporal; no modifica el proyecto.
