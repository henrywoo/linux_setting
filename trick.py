#
#
#########################################################################
#
# Multiple loops in comprehension list
#
#########################################################################


# 1. Combination of an array
bb=[1,2,3,4]
[(i2,j2,k2) for i,i2 in enumerate(bb) for j,j2 in enumerate(bb) for k,k2 in enumerate(bb) if i<j and j<k]
#[(1, 2, 3), (1, 2, 4), (1, 3, 4), (2, 3, 4)]



# 2. sort by value in dictionary
In [83]: d
Out[83]: 
{-1: 'b',
 1: 'a',
 <__main__.A at 0x7f18c4d89990>: '0',
 <__main__.A at 0x7f18c4d89a10>: 2}

In [84]: d2=sorted(d.items(),key=lambda x:x[1]); d2
Out[84]: 
[(<__main__.A at 0x7f18c4d89a10>, 2),
 (<__main__.A at 0x7f18c4d89990>, '0'),
 (1, 'a'),
 (-1, 'b')]

# swap key->value relation to value->key relation
In [85]: d3 = dict([(i[1],i[0]) for i in d2]); d3
Out[85]: 
{2: <__main__.A at 0x7f18c4d89a10>,
 '0': <__main__.A at 0x7f18c4d89990>,
 'a': 1,
 'b': -1}

# About sorting...


