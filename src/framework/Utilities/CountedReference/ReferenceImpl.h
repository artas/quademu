

#ifndef QUAD_REFERENCEIMPL_H
#define QUAD_REFERENCEIMPL_H

#include "Reference.h"

template
<
typename T,
class THREADING_MODEL
>
Referencer<T, THREADING_MODEL>::Referencer(T *ref)
: i_holder(NULL)
{
    if( ref != NULL )
    {
        i_holder = new ReferenceeHolder(ref);
        ++i_holder->i_referenceCount;
    }
}

template
<
typename T,
class THREADING_MODEL
>
Referencer<T, THREADING_MODEL>::~Referencer()
{
    if( i_holder != NULL )
        deReference(i_holder);
    i_holder = NULL;
}

template
<
typename T,
class THREADING_MODEL
>
Referencer<T, THREADING_MODEL>&
Referencer<T, THREADING_MODEL>::operator=(const Referencer<T, THREADING_MODEL> &obj)
{
    if( i_holder != NULL )
        deReference(i_holder);
    if( obj.i_holder != NULL )
        addReference(obj.i_holder);
    i_holder = obj.i_holder;
    return *this;
}

template
<
typename T,
class THREADING_MODEL
>
Referencer<T, THREADING_MODEL>&
Referencer<T, THREADING_MODEL>::operator=(T *ref)
{
    if( i_holder != NULL )
        deReference(i_holder);
    i_holder = NULL;
    if( ref != NULL )
    {
        i_holder = new ReferenceeHolder(ref);
        ++i_holder->i_referenceCount;
    }

    return *this;
}

template
<
typename T,
class THREADING_MODEL
>
void
Referencer<T, THREADING_MODEL>::deReference(ReferenceHolder<T, THREADING_MODEL> *holder)
{
    assert( holder != NULL && holder->i_referenceCount > 0);
    bool delete_object = false;

    {
        // The guard is within the scope due to the guard
        // must release earlier than expected.
        Lock guard(*holder);
        Guard(&guard);

        --holder->i_referenceCount;
        if( holder->i_referenceCount == 0 )
            delete_object = true;
    }

    if( delete_object )
    {
        delete holder->i_referencee;
        delete holder;
    }
}

template
<
typename T,
class THREADING_MODEL
>
void
Referencer<T, THREADING_MODEL>::addReference(ReferenceHolder<T, THREADING_MODEL> *holder)
{
    assert( i_holder != NULL );
    Lock guard(*holder);
    Guard(&guard);

    ++holder->i_referenceCount;
}
#endif

