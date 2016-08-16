# -*- coding: UTF-8 -*-
import M2Crypto
from Crypto.PublicKey import RSA
import base64
import sys
#私钥加密
def pri_encrypt(msg, file_name):
    rsa_pri = M2Crypto.RSA.load_key(file_name)
    
    output = ''
    while msg:
        input = msg[:117]
        msg = msg[117:]
        out = rsa_pri.private_encrypt(input, M2Crypto.RSA.pkcs1_padding) #解密
        output = output + out
    output64 = output.encode('base64')
    print('密文:\n%s' % output64)
    return output64

#公钥加密
def pub_encrypt(msg, file_name):
    rsa_pub = M2Crypto.RSA.load_pub_key(file_name)
       
    output = ''
    while msg:
        input = msg[:117]
        msg = msg[117:]
        out = rsa_pub.public_encrypt(input, M2Crypto.RSA.pkcs1_padding) #解密
        output = output + out
    output64 = output.encode('base64')
    print('密文:\n%s' % output64)
    return output64

#公钥解密
def pub_decrypt_with_pubkeyfile(msg, file_name):
    rsa_pub = M2Crypto.RSA.load_pub_key(file_name)
    pub_decrypt(msg, rsa_pub)
    
def pub_decrypt(msg, rsa_pub):
    ctxt_pri = msg.decode("base64")     # 先将str转成base64
    maxlength = 128
    output = ''
    while ctxt_pri:
        input = ctxt_pri[:128]
        ctxt_pri = ctxt_pri[128:]
        out = rsa_pub.public_decrypt(input, M2Crypto.RSA.pkcs1_padding) #解密
        output = output + out
    print('明文:%s'% output)


#私钥解密
def pri_decrypt_with_prikeyfile(msg, file_name):
    rsa_pub = M2Crypto.RSA.load_key(file_name)
    pri_decrypt(msg, rsa_pub)
    
def pri_decrypt(msg, rsa_pub):
    ctxt_pri = msg.decode("base64")     # 先将str转成base64
    maxlength = 128
    output = ''
    while ctxt_pri:
        input = ctxt_pri[:128]
        ctxt_pri = ctxt_pri[128:]
        out = rsa_pub.private_decrypt(input, M2Crypto.RSA.pkcs1_padding) #解密
        output = output + out
    print('明文:%s'% output)
    
################################################################################
    
if __name__ == "__main__":
    prikey_file = '/home/kiya/Desktop/rsa_private_key.pem'
    pubkey_file = '/home/kiya/Desktop/rsa_public_key.pem'
    
    msg = 'hello'    
    pub_encrypt(msg,pubkey_file)

    # primsg = pri_encrypt(msg, prikey_file)
    # pub_decrypt_with_pubkeyfile(primsg, pubkey_file)
