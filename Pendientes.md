# Correcciones 05/07

  - [x] Impresión de créditos
  - [x] Total pagado en registro de pagos
  - [x] Logo en recibo print
  - [x] Si hay 30%, mensaje de confirmación
  - [ ] Rubro-Turno->UnidadDidactica->Curso >>> Rubro - Turno -> Programa académico -> Unidad didáctica -> Unidad aperturada -> Periodo.

# Correcciones y adiciones primera parte 28/06

## Módulo estudiante
  - [x] Cursos aperturados - Solo mostrar los del programa del estudiante.
  - [x] Detalles > Lista de unidades - Si ya me matriculé al inglés básico, cambiar el estado a matriculado.
  - [x] Ficha de matrícula - En lugar de grupo que aparezca aula.
  - [x] Horarios - Ordenar por nombre y que solo aparezcan iniciales. Lu: 08:00 am - 10:00 am.
  - [ ] Estado de pagos por periodo.
## Apertura de unidades (Cursos)
  - [x] Validación. Si ya existe un curso que tiene el mismo código. (Validar no repetición según unidad, periodo, turno y grupo)
  - [x] Horarios - Ordenar por nombre y que solo aparezcan iniciales. Lu: 08:00 am - 10:00 am.
## Estudiantes
  - [x] Horarios - Ordenar por nombre y que solo aparezcan iniciales. Lu: 08:00 am - 10:00 am.
  - [x] En la impresión poner horarios al último y cambiar fecha de versión <> fecha de impresión
## Información financiera
  - [x] Concepto de pago -> Relacionado al programa de estudio.
  - [x] Impresión - Agregar logo.
  - [ ] En lugar de a nombre de, listar apoderados
  - [x] En lugar del saldo, Total
  - [x] Interés mora | Penalización mora - Aceptar decimales
  - [x] Crédito - Tipo por estado
  - [x] Impresión de créditos
  - [ ] Marcar como pagado
  - [x] Mostrar pagos eliminados como anulados
## Horarios
  - [x] No captura horas de la mañana
  - [x] Validacion de cruces
## Notas
  - [x] Ordenar
  - [x] La plantilla no muestra el último registro.
## Asistencia
  - [ ] Validar el 30% de inasistencias
  - [x] Si guarda una falta, que no se desactive
  - [x] Iterar 4 estados (Asistido, Falta, Tardanza, Permiso)



---
# Módulos a partir de 21/06/2023 hasta 30/06/2023 - 5800

## Inscripción a varios programas - 400
## Módulo de record académico - S/ 500 - VIERNES 23
  - Ingreso de notas
  - Conectado a la información académica.
    - Ver la usabilidad
  - Reporte de record académico
  - Validacion de requerimientos.

## Convalidación de unidades   - 2500

 - Presentar solicitud
    - Recepción de FUT 
      - El estudiante ingresa los datos del FUT de manera virtual.
      - Adjuntar documentos digitales.
      - El proceso tiene requisitos ya definidos
    - Derivación de FUT a unidad académica
    - Ver matrícula
    - Ver solicitud de convalidación
    - Imprimir solicitud de convalidación
    - Generar reportes
      - Periodo de fechas

 - Revision de dopcumentos
 - Entrega de documentos
 - Entrega de ficha de convalidacion.

    > Sistema de tramite documentario.
    > Módulo de convalidaciones.

## Roles de acceso al sistema - 200

## Reportes en excel - Archivo CLASS REGISTER - S/ 400
 OE - Oral exam, son notas a parte. NO ATTENDANCE
  - Reporte de notas en pdf y agregar campos 
    - 
  - Repotes de asistencia en pdf

# Cambios para la implemetación de los módulos requeridos - S/ 3500

## Apertura de cursos - S/ 500

> Incluye los submenús bajo Académico > Estructuración > Cursos y Académico > Estructuración > Cerrar cursos

Faltan las siguientes relaciones:
  
  - Sede
  - Turno
    - Sede > Turno
    - Sede-Turno > Programa de Estudio
    - Programa de Estudio > Pensum
  - Pensum
    - Pensum > Unidad didáctica

    - Pensum como plan curricular
    - Rubro = Sede
    - Nombre del curso = Nombre unidad didactica
    - Codigo autogenerado en base al periodo académico e iniciales de la UD (2024-I-ABI-01)
  
?Especificar si se requieren todas las acciones: Clonar, Ver

## Programación de horarios

> Submódulo de Cursos

Faltan las siguientes relaciones:
  
  - Sedenidades-didacticas

  - Opcion de repetir

## Matricula a programa de estudios
- Formalizada sale ENtra Monto de pago
- Que sea inscripcion al programa de estudios
- Código DNI

- 2 pestañas en la lista de curso. Lista general y abiertos.
- Ficha de matrícula al lado de inscripcion

- Subir foto

## Programación de pagos
## Programación de créditos

### Periodos

  - Solamente los periodos activos
  - Opcion para ver los inactivos
  - Producto = Concepto de pago
  - Pagos realizados


#### Pendientes

  - Foto
  - Boleta
  - Ficha de inscripcion
  - Ficha de pago
  - 
  - Validaciones
  - Perfil
  - Cambio de contraseña
  - Busqueda


  - Cmabiar selector docentes por buscable
  - Horarios: Agregar boton para retornar al curso


  - Validacion de horarios - Cruces - Repetir
  - Asistencia acumuladas (30%)
