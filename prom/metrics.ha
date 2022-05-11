use errors;

export type metrictype = enum i16 {
    COUNTER = 1,
    GAUGE = 2,
    HISTOGRAM = 3,
    SUMMARY = 4,
};

export type metric = struct {
    metrictype: metrictype,
    name: str,
    help: str,
    val: f64,
};

// Adds the value to the metric and returns the resulting sum
export fn add(m: *metric, v: f64) (f64 | errors::error) = {
    if (m.metrictype == metrictype::HISTOGRAM || m.metrictype == metrictype::SUMMARY) {
        return errors::invalid;
    };

    m.val += v;
    return  m.val;
};

// Subtracts the value from the metrics and returns the resulting difference
export fn sub(m: *metric, v: f64) (f64 | errors::error) = {
    if (m.metrictype == metrictype::HISTOGRAM || m.metrictype == metrictype::SUMMARY) {
        return errors::invalid;
    };

    m.val -= v;
    return  m.val;
};

// Sets the value of the metrics overriding the current value and returns the
// new value
export fn set(m: *metric, v: f64) (f64 | errors::error) = {
    if (m.metrictype == metrictype::HISTOGRAM || m.metrictype == metrictype::SUMMARY) {
        return errors::invalid;
    };

     m.val = v;
    return  m.val;
};