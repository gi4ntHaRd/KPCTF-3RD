import os
from Crypto.Util.number import *

Welcome = """ _  ______   ____ _____ _____ 
| |/ /  _ \ / ___|_   _|  ___|
| ' /| |_) | |     | | | |_   
| . \|  __/| |___  | | |  _|  
|_|\_\_|    \____| |_| |_|    """

flag = bytes(os.getenv('FLAG'),'utf-8')

if __name__ == "__main__":
    print(Welcome)
    m = bytes_to_long(flag)
    p = getPrime(1024)
    q = getPrime(1024)
    n = p * q
    e = 65535
    mm = m * p * e * 2023
    c = pow(mm, e, n)
    print('n =',n)
    print('e =',e)
    print('c =',c)