@test fn add() void = {
    let c: metric = metric {
        metrictype = metrictype::COUNTER,
        ...
    };
    assert(c.val == 0.0);

    let newval = add(&c, 4.0)!;
    assert(newval == 4.0);
    assert(c.val == 4.0);

    let newval = add(&c, 6.0)!;
    assert(newval == 10.0);
    assert(c.val == 10.0);
};

@test fn sub() void = {
    let c: metric = metric {
        metrictype = metrictype::COUNTER,
        ...
    };
    assert(c.val == 0.0);

    let newval = sub(&c, 4.0)!;
    assert(newval == -4.0);
    assert(c.val == -4.0);

    let newval = sub(&c, 6.0)!;
    assert(newval == -10.0);
    assert(c.val == -10.0);
};

@test fn set() void = {
    let c: metric = metric {
        metrictype = metrictype::COUNTER,
        ...
    };
    assert(c.val == 0.0);

    let newval = set(&c, 4.0)!;
    assert(newval == 4.0);
    assert(c.val == 4.0);

    let newval = set(&c, 6.0)!;
    assert(newval == 6.0);
    assert(c.val == 6.0);
};