when not defined(release) and not defined(js) and not defined(cpp) and not defined(objc):
  import ospaths  # 3 Lines below are all logic.
  const header_file = currentSourcePath().splitPath.head & "/debug.h"
  proc debug*(arg: any):  void {.importc: "debug",  header: header_file.}
  proc idebug*(arg: any): void {.importc: "idebug", header: header_file.}

when isMainModule and not defined(release) and not defined(js) and not defined(cpp) and not defined(objc):
  # Just a tiny helper for "Print Debugging", not bad for 3 lines ;P
  var
    a = 9
    b = 42
    c = 3.14
    d = 'z'

  let
    e = 5
    f = 42
    g = 3.14
    h = 'z'

  debug(1.2)
  debug('a')  # Will print the integer number of the char.

  debug(a)    # Will print the variable name and value.
  debug(b)
  debug(c)
  debug(d)
  debug(e)
  debug(f)
  debug(g)
  debug(h)

  idebug(a)   # Will print the variable name, value, source full file path and line number.
  idebug(b)
  idebug(c)
  idebug(d)
  idebug(e)
  idebug(f)
  idebug(g)
  idebug(h)

  proc test0 =
    idebug(a)   # Just to show it works inside proc.

  test0()
