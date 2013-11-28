#include "blinker.h"

Blinker::Blinker(uint8_t pin, uint8_t state)
{
	_pin = pin;
	_state = state;
	pinMode(_pin, OUTPUT);
	digitalWrite(_pin, _state);
}

Blinker::~Blinker()
{
	
}

void Blinker::blink()
{
	if (_state==LOW) {
		_state = HIGH;
	} else {
		_state = LOW;
	}
	digitalWrite(_pin, _state);
}
