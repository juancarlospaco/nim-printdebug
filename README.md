# Nim-PrintDebug

Print Debug for Nim, tiny 3 lines Lib, C Target.

It can print the variable name, value, source full file path and line number.

For `char` it prints the integer number too. Works when **not** build for Release.


# Use

```nim
import printdebug
var a = 42
idebug(a)
```

- Run the module itself for an Example.


# Install

- `nimble install printdebug`


# idebug versus echo

idebug output:

```nim
/tmp/nimcache/d/probando/probando.c:184: a_2rnMjDfJU69afSGaL7CTTDA = 3
/tmp/nimcache/d/probando/probando.c:186: b_sw8ZYR5hWNvML7CcjrPwkQ = 42
/tmp/nimcache/d/probando/probando.c:188: c_lQAeo5PI3JAPlfNIWPH79bA = 3.14
/tmp/nimcache/d/probando/probando.c:190: d_H9c4CM9abttjArqE9asp7imUg = z
/tmp/nimcache/d/probando/probando.c:192: e_VE76pRVq9aqJNDCqxzP7u4w = 3
/tmp/nimcache/d/probando/probando.c:194: f_Yg3H7j9aNXp13XcVjw1pdug = 42
/tmp/nimcache/d/probando/probando.c:196: g_u2dRosJ5dbpg1SDH9aO9bZKQ = 3.14
/tmp/nimcache/d/probando/probando.c:198: h_GjCvcrfdrjTJpUMO9aT0s1g = z
```

echo output:

```nim
3
42
3.14
z
3
42
3.14
z
```


# Requirements

- None
