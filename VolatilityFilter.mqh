// VolatilityFilter.mqh
// Dynamic volatility management using ATR indicators

class VolatilityFilter {
private:
    double atrValue;
    double volatilityThreshold;

public:
    // Constructor
    VolatilityFilter(double threshold) {
        volatilityThreshold = threshold;
    }

    // Method to calculate ATR
    void CalculateATR(int period) {
        atrValue = iATR(NULL, 0, period, 0);
    }

    // Method to check if volatility exceeds the threshold
    bool IsVolatile() {
        return atrValue > volatilityThreshold;
    }
};
