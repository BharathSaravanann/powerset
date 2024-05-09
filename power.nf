process powerset {

script:

"""
#!/usr/bin/env python3
s=[1,2,3]
size=2**len(s)
for i in range(size):
    for j in range(len(s)):
        if (i & 1<<j)>0:
            print(s[j],end=" ")
    print()

"""

}


workflow {

powerset()

}
