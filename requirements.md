# Базовые требования

- Нужно разработать виртуальный пивной завод. У завода можно запросить нужное количество нужного пива
- Базовая объектная структурая завода должна подходить для любого конвейерного производства
- Пиво можно выпускать в банках и бутылках
- У бутылки должна быть пробка
- Любое пиво можно открыть и выпить, у него есть стоимость, которая состоит из себестоимости и стоимости упаковки
- Должна быть возможность проанализировать выпущенную заводом продукцию: посчитать общую прибыль, оценить запасы упаковки
- Упаковку нужно привозить на завод отдельно и хранить на складе
- Бутылки могут быть сданы в переработку и использоваться повторно, банки могут использоваться только один раз
- Если банку пытаются использовать повторно, конвейер должен сообщать о замене и использовать другую банку
- Проектировать завод по возможности таким образом, чтобы можно было переиспользовать код под любое конвейерное производство

Сущности в требованиях:
- Пивной завод
- Пиво (как продукт, который можно выпить)
- TODO: Конвейерное производство
- Банка, бутылка, пробка
- Упаковка
- Склад

Функциональные требования:
- У завода можно запросить нужное количество нужного пива
- Любое пиво можно открыть и выпить
- TODO: Должна быть возможность проанализировать выпущенную заводом продукцию: посчитать общую прибыль, оценить запасы упаковки
- TODO: Упаковку нужно привозить на завод отдельно и хранить на складе
- TODO: Бутылки могут быть сданы в переработку и использоваться повторно, банки могут использоваться только один раз. Если банку пытаются использовать повторно, конвейер должен сообщать о замене и использовать другую банку
- TODO: Проектировать завод по возможности таким образом, чтобы можно было переиспользовать код под любое конвейерное производство