from pynq import Overlay
from pynq.lib import AxiGPIO
import time

class ODMRController:
    def __init__(self, bitstream_path=None):
        if bitstream_path:
            self.overlay = Overlay(bitstream_path)
        else:
            self.overlay = Overlay('pulse_odmr.bit')
        
        self.gpio = self.overlay.axi_gpio_0
        self.pulse_width = 100
        self.repetitions = 1000
    
    def set_pulse_width(self, width_us):
        self.pulse_width = width_us
    
    def set_repetitions(self, reps):
        self.repetitions = reps
    
    def trigger_pulse(self):
        self.gpio.write(0x00, 0x01)
        time.sleep(self.pulse_width / 1e6)
        self.gpio.write(0x00, 0x00)
    
    def run_sequence(self):
        for _ in range(self.repetitions):
            self.trigger_pulse()
            time.sleep(0.001)
    
    def close(self):
        self.overlay.free()

if __name__ == '__main__':
    controller = ODMRController()
    controller.set_pulse_width(50)
    controller.run_sequence()
    controller.close()