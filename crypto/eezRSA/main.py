import os
from Crypto.Util.number import *
from gmpy2 import *

Welcome = """ _  ______   ____ _____ _____ 
| |/ /  _ \ / ___|_   _|  ___|
| ' /| |_) | |     | | | |_   
| . \|  __/| |___  | | |  _|  
|_|\_\_|    \____| |_| |_|    """

flag = bytes(os.getenv('FLAG'),'utf-8')

def gen(MaxBits, Bits, r):
	k = MaxBits // Bits
	while True:
		p = getPrime(Bits)
		q = getPrime(Bits*(k-r))
		N = (p**r)*q

		if len(bin(N)) -2 == MaxBits:
			break
	phi = (p**(r-1))*(p-1)*(q-1)

	idx = (r*(r-1)) / ((r+1)*(r+1))
	delta = int(pow(mpz(N), idx))

	while True:
		d1 = getPrime(int(MaxBits*idx)//2)
		d2 = getPrime(int(MaxBits*idx)//2)
		if abs(d1-d2) < delta:
			e1 = invert(d1, phi)
			e2 = invert(d2, phi)
			break
	e = 65537
	return N, e, e1, e2

if __name__ == "__main__":
    r = 7
    Bits = 256
    MaxBits = 2048
    
    N, e, e1, e2 = gen(MaxBits, Bits, r)
    M = bytes_to_long(flag)
    C = powmod(M, e, N)
    print(f"N={N}\nC={C}\ne={e}\ne1={e1}\ne2={e2}\n")
    exit()