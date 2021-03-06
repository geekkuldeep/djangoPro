# coding: utf-8

__doc__ = u"""
    >>> slice_start_end(u'abcdef', 2, 3)
    c
    >>> slice_start(u'abcdef', 2, 3)
    cdef
    >>> slice_end(u'abcdef', 2, 3)
    ab
    >>> slice_all(u'abcdef', 2, 3)
    abcdef
    >>> slice_start_none(u'abcdef', 2, 3)
    cdef
    >>> slice_none_end(u'abcdef', 2, 3)
    ab
    >>> slice_none_none(u'abcdef', 2, 3)
    abcdef

    >>> slice_start_end(u'abcdef', 2, 10)
    cdef
    >>> slice_start(u'abcdef', 2, 10)
    cdef
    >>> slice_end(u'abcdef', 2, 10)
    ab
    >>> slice_all(u'abcdef', 2, 10)
    abcdef

    >>> slice_start_end(u'abcdef', 0, 5)
    abcde
    >>> slice_start(u'abcdef', 0, 5)
    abcdef
    >>> slice_end(u'abcdef', 0, 5)
    <BLANKLINE>
    >>> slice_all(u'abcdef', 0, 5)
    abcdef
    >>> slice_start_none(u'abcdef', 0, 5)
    abcdef
    >>> slice_none_end(u'abcdef', 0, 5)
    <BLANKLINE>
    >>> slice_none_none(u'abcdef', 0, 5)
    abcdef

    >>> slice_start_end(u'abcdef', -6, -1)
    abcde
    >>> slice_start(u'abcdef', -6, -1)
    abcdef
    >>> slice_end(u'abcdef', -6, -1)
    <BLANKLINE>
    >>> slice_all(u'abcdef', -6, -1)
    abcdef
    >>> slice_start_none(u'abcdef', -6, -1)
    abcdef
    >>> slice_none_end(u'abcdef', -6, -1)
    <BLANKLINE>
    >>> slice_none_none(u'abcdef', -6, -1)
    abcdef

    >>> slice_start_end(u'abcdef', -6, -7)
    <BLANKLINE>
    >>> slice_start(u'abcdef', -6, -7)
    abcdef
    >>> slice_end(u'abcdef', -6, -7)
    <BLANKLINE>
    >>> slice_all(u'abcdef', -6, -7)
    abcdef
    >>> slice_start_none(u'abcdef', -6, -7)
    abcdef
    >>> slice_none_end(u'abcdef', -6, -7)
    <BLANKLINE>
    >>> slice_none_none(u'abcdef', -6, -7)
    abcdef

    >>> slice_start_end(u'abcdef', -7, -7)
    <BLANKLINE>
    >>> slice_start(u'abcdef', -7, -7)
    abcdef
    >>> slice_end(u'abcdef', -7, -7)
    <BLANKLINE>
    >>> slice_all(u'abcdef', -7, -7)
    abcdef
    >>> slice_start_none(u'abcdef', -7, -7)
    abcdef
    >>> slice_none_end(u'abcdef', -7, -7)
    <BLANKLINE>
    >>> slice_none_none(u'abcdef', -7, -7)
    abcdef

    >>> slice_start_end(u'a??b??c??d??e??f??', 2, 8)
    b??c??d??
    >>> slice_start(u'a??b??c??d??e??f??', 2, 8)
    b??c??d??e??f??
    >>> slice_end(u'a??b??c??d??e??f??', 2, 8)
    a??
    >>> slice_all(u'a??b??c??d??e??f??', 2, 8)
    a??b??c??d??e??f??
    >>> slice_start_none(u'a??b??c??d??e??f??', 2, 8)
    b??c??d??e??f??
    >>> slice_none_end(u'a??b??c??d??e??f??', 2, 8)
    a??
    >>> slice_none_none(u'a??b??c??d??e??f??', 2, 8)
    a??b??c??d??e??f??

    >>> slice_start_end(u'????????????', 2, 4)
    ????
    >>> slice_start(u'????????????', 2, 4)
    ????????
    >>> slice_end(u'????????????', 2, 4)
    ????
    >>> slice_all(u'????????????', 2, 4)
    ????????????
    >>> slice_start_none(u'????????????', 2, 4)
    ????????
    >>> slice_none_end(u'????????????', 2, 4)
    ????
    >>> slice_none_none(u'????????????', 2, 4)
    ????????????

    >>> slice_start_end(u'????????????', -4, -2)
    ????
    >>> slice_start(u'????????????', -4, -2)
    ????????
    >>> slice_end(u'????????????', -4, -2)
    ????
    >>> slice_all(u'????????????', -4, -2)
    ????????????
    >>> slice_start_none(u'????????????', -4, -2)
    ????????
    >>> slice_none_end(u'????????????', -4, -2)
    ????
    >>> slice_none_none(u'????????????', -4, -2)
    ????????????

    >>> slice_start_end(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
    >>> slice_start(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
    >>> slice_end(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
    >>> slice_all(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
    >>> slice_start_none(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
    >>> slice_none_end(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
    >>> slice_none_none(None, 2, 4)
    Traceback (most recent call last):    
    TypeError: 'NoneType' object is not subscriptable
"""

import sys

if sys.version_info[0] >= 3:
    __doc__ = __doc__.replace(u"(u'", u"('").replace(u" u'", u" '")

def slice_start_end(unicode s, int i, int j):
    print(s[i:j])

def slice_start(unicode s, int i, int j):
    print(s[i:])

def slice_end(unicode s, int i, int j):
    print(s[:i])

def slice_all(unicode s, int i, int j):
    print(s[:])

def slice_start_none(unicode s, int i, int j):
    print(s[i:None])

def slice_none_end(unicode s, int i, int j):
    print(s[None:i])

def slice_none_none(unicode s, int i, int j):
    print(s[None:None])
