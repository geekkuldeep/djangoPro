# mode: run


def bigint(x):
    # avoid 'L' postfix in Py2.x
    print(str(x).rstrip('L'))

def bigints(x):
    # avoid 'L' postfix in Py2.x
    print(str(x).replace('L', ''))


def or_obj(obj2, obj3):
    """
    >>> or_obj(2, 3)
    3
    """
    obj1 = obj2 | obj3
    return obj1


def or_int(obj2):
    """
    >>> or_int(1)
    17
    >>> or_int(16)
    16
    """
    obj1 = obj2 | 0x10
    return obj1


def xor_obj(obj2, obj3):
    """
    >>> xor_obj(2, 3)
    1
    """
    obj1 = obj2 ^ obj3
    return obj1


def xor_int(obj2):
    """
    >>> xor_int(2)
    18
    >>> xor_int(16)
    0
    """
    obj1 = obj2 ^ 0x10
    return obj1


def and_obj(obj2, obj3):
    """
    >>> and_obj(2, 3)
    2
    """
    obj1 = obj2 & obj3
    return obj1


def and_int(obj2):
    """
    >>> and_int(1)
    0
    >>> and_int(18)
    16
    """
    obj1 = obj2 & 0x10
    return obj1


def lshift_obj(obj2, obj3):
    """
    >>> lshift_obj(2, 3)
    16
    """
    obj1 = obj2 << obj3
    return obj1


def rshift_obj(obj2, obj3):
    """
    >>> rshift_obj(2, 3)
    0
    """
    obj1 = obj2 >> obj3
    return obj1


def rshift_int(obj2):
    """
    >>> rshift_int(2)
    0

    >>> rshift_int(27)
    3
    >>> (-27) >> 3
    -4
    >>> rshift_int(-27)
    -4

    >>> rshift_int(32)
    4
    >>> (-32) >> 3
    -4
    >>> rshift_int(-32)
    -4

    >>> (2**28) >> 3
    33554432
    >>> rshift_int(2**28)
    33554432
    >>> (-2**28) >> 3
    -33554432
    >>> rshift_int(-2**28)
    -33554432

    >>> (2**30) >> 3
    134217728
    >>> rshift_int(2**30)
    134217728
    >>> rshift_int(-2**30)
    -134217728

    >>> bigint((2**60) >> 3)
    144115188075855872
    >>> bigint(rshift_int(2**60))
    144115188075855872
    >>> bigint(rshift_int(-2**60))
    -144115188075855872
    """
    obj1 = obj2 >> 3
    return obj1


def lshift_int(obj):
    """
    >>> lshift_int(0)
    (0, 0, 0, 0)
    >>> bigints(lshift_int(1))
    (8, 2147483648, 9223372036854775808, 10633823966279326983230456482242756608)
    >>> bigints(lshift_int(-1))
    (-8, -2147483648, -9223372036854775808, -10633823966279326983230456482242756608)
    >>> bigints(lshift_int(2))
    (16, 4294967296, 18446744073709551616, 21267647932558653966460912964485513216)

    >>> bigints(lshift_int(27))
    (216, 57982058496, 249031044995078946816, 287113247089541828547222325020554428416)
    >>> (-27) << 3
    -216
    >>> bigints(lshift_int(-27))
    (-216, -57982058496, -249031044995078946816, -287113247089541828547222325020554428416)

    >>> bigints(lshift_int(32))
    (256, 68719476736, 295147905179352825856, 340282366920938463463374607431768211456)
    >>> (-32) << 3
    -256
    >>> bigints(lshift_int(-32))
    (-256, -68719476736, -295147905179352825856, -340282366920938463463374607431768211456)

    >>> bigint((2**28) << 3)
    2147483648
    >>> bigints(lshift_int(2**28))
    (2147483648, 576460752303423488, 2475880078570760549798248448, 2854495385411919762116571938898990272765493248)
    >>> bigint((-2**28) << 3)
    -2147483648
    >>> bigints(lshift_int(-2**28))
    (-2147483648, -576460752303423488, -2475880078570760549798248448, -2854495385411919762116571938898990272765493248)

    >>> bigint((2**30) << 3)
    8589934592
    >>> bigints(lshift_int(2**30))
    (8589934592, 2305843009213693952, 9903520314283042199192993792, 11417981541647679048466287755595961091061972992)
    >>> bigints(lshift_int(-2**30))
    (-8589934592, -2305843009213693952, -9903520314283042199192993792, -11417981541647679048466287755595961091061972992)

    >>> bigint((2**60) << 3)
    9223372036854775808
    >>> bigints(lshift_int(2**60))
    (9223372036854775808, 2475880078570760549798248448, 10633823966279326983230456482242756608, 12259964326927110866866776217202473468949912977468817408)
    >>> bigints(lshift_int(-2**60))
    (-9223372036854775808, -2475880078570760549798248448, -10633823966279326983230456482242756608, -12259964326927110866866776217202473468949912977468817408)
    """
    r1 = obj << 3
    r2 = obj << 31
    r3 = obj << 63
    r4 = obj << 123
    return r1, r2, r3, r4


def mixed_obj(obj2, obj3):
    """
    >>> mixed_obj(2, 3)
    16
    """
    obj1 = obj2 << obj3 | obj2 >> obj3
    return obj1


def mixed_int(obj2):
    """
    >>> mixed_int(2)
    18
    >>> mixed_int(16)
    0
    >>> mixed_int(17)
    1
    """
    obj1 = (obj2 ^ 0x10) | (obj2 & 0x01)
    return obj1