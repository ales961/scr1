# Лабораторная работа 2. Симуляция SCR1

## Задание
Номер варианта | Вид исключения | Тест | Reset Vector | Trap Vector | Обработчик
--------------- | ------------- | ------------- | ------------- | ------------- | -------------
1 | Illegal instruction | isa/rv32mi/illegal.S | 0x400 | 0x200 | Вывод строки «illegal»

## Результаты работы

* **lab_scr1_sim/results/illegal.dump** - дизассемблер теста
* **lab_scr1_sim/results/tracelog_core_0.log** - журнал трассировки
* **sim/tests/common/link.ld** - создана новая секция по адресу 0x400
* **sim/tests/common/riscv_macros.h** - установлено нужное смещение для функции обработки прерываний, установлен переход к секции с именем .text.start, обеспечен вывод строки «illegal»
* **sim/tests/riscv_isa/rv32_tests.inс** - оставлен только тест isa/rv32mi/illegal.S
* **src/includes/scr1_arch_description.svh** - изменены значения вектора сброса и вектора обработки прерываний

## Сборка
Запуск симуляции:
```
make TARGETS="riscv_isa"
```

Сборка в режиме генерации wave форм: 
```
make run_verilator_wf TARGETS="riscv_isa" TRACE=1
```

