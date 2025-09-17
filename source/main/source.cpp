#include <iostream>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"

#define BLINK_GPIO GPIO_NUM_2  // GPIO15 trên ESP32
#define BLINK_GPI1 GPIO_NUM_15  // GPIO15 trên ESP32
extern "C" void app_main(void) {
    gpio_reset_pin(BLINK_GPIO);
    gpio_reset_pin(BLINK_GPI1);
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
    gpio_set_direction(BLINK_GPI1, GPIO_MODE_OUTPUT);
    while (true) {
        std::cout << "LED ON" << std::endl;
        gpio_set_level(BLINK_GPIO, 1);
        gpio_set_level(BLINK_GPI1, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        std::cout << "LED OFF" << std::endl;
        gpio_set_level(BLINK_GPIO, 0);
        gpio_set_level(BLINK_GPI1, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        }
}