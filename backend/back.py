def to_int(object):
    try:
        object = object.replace(",", ".")
        value = float(object)
        return value
    except ValueError:
        pass
