#! /usr/bin/env python3
FLAG = 'flag{uwu}'

a = lambda n: a(n-2) + a(n-1) if n >= 2 else (2 if n == 0 else 1)

b = lambda x: bytes.fromhex(x).decode()

h = eval(b('7072696e74'))

def d():
    h(b('496e636f727265637420666c61672120596f75206e65656420746f206861636b206465657065722e2e2e'))
    eval(b('5f5f696d706f72745f5f282273797322292e65786974283129'))
    h(FLAG)

def e(f):
    h("Welcome to the Reverse Engineering challenge.")
    c = input("Input the correct flag: ")
    if c[:5].encode().hex() != '{0}{0}{0}c{0}1{0}{2}{2}b'.format(*map(str, [6, 4, 7])):
        d()
    if c[int(chr(45) + chr(49))] != chr(125):
        d()
    g = c[5:-1].encode()
    if bytes( (g[i] ^ (a(i) & 0xff) for i in range(len(g))) ) != f:
        d()
    h(b('4e696365206a6f622e20596f7520676f742074686520636f727265637420666c616721'))

if __name__ == "__main__":
    e(b'3&`[uj{iJ\x13\x1d\xa2.h"3\xfa\xac\xe5\xe0~\xf9\xc1$g?\x0c\xd0\x82\xc4\xc0h')
else:
    eval(b('5f5f696d706f72745f5f282273797322292e65786974283029'))
