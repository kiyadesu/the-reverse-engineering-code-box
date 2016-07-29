#include<stdio.h>
#include<stdlib.h>
#include<dlfcn.h>

int main(int argc, char const *argv[])
{
    void* handle;
    int (*fun)(char*,char*);
    handle = dlopen("/data/local/tmp/lib_zhaopin_v1.0.so",RTLD_LAZY);
    if (!handle) {
        printf("%s\n", dlerror());
        exit(1);
    }
    printf("handle: %p\n", handle);
    fun = (int(*)(char*,char*))dlsym(handle,"encrypt_pwd");
    printf("encryptpwd: %p\n", fun);
    char hello[10]= "password";
    char rets[100] = "";
    int ret = fun(hello,rets);
    printf("ret: %d\n", ret);
    printf("%s\n", rets);
    dlclose(handle);
    return 0;
}
