

#ifndef QUAD_SINGLETONIMPL_H
#define QUAD_SINGLETONIMPL_H

#include "Singleton.h"

// avoid the using namespace here cuz
// its a .h file afterall

template
<
typename T,
class ThreadingModel,
class CreatePolicy,
class LifeTimePolicy
>
T&
Quad::Singleton<T, ThreadingModel, CreatePolicy, LifeTimePolicy >::Instance()
{
    if( !si_instance )
    {
        // double-checked Locking pattern
        Guard();
        if( !si_instance )
        {
            if( si_destroyed )
            {
                si_destroyed = false;
                LifeTimePolicy::OnDeadReference();
            }
            si_instance = CreatePolicy::Create();
            LifeTimePolicy::ScheduleCall(&DestroySingleton);
        }
    }

    return *si_instance;
}

template
<
typename T,
class ThreadingModel,
class CreatePolicy,
class LifeTimePolicy
>
void
Quad::Singleton<T, ThreadingModel, CreatePolicy, LifeTimePolicy>::DestroySingleton()
{
    CreatePolicy::Destroy(si_instance);
    si_instance = NULL;
    si_destroyed = true;
}

#define INSTANTIATE_SINGLETON_1(TYPE) \
    template class QUAD_DLL_DECL Quad::Singleton<TYPE, Quad::SingleThreaded<TYPE>, Quad::OperatorNew<TYPE>, Quad::ObjectLifeTime<TYPE> >; \
    template<> TYPE* Quad::Singleton<TYPE, Quad::SingleThreaded<TYPE>, Quad::OperatorNew<TYPE>, Quad::ObjectLifeTime<TYPE> >::si_instance = 0; \
    template<> bool Quad::Singleton<TYPE, Quad::SingleThreaded<TYPE>, Quad::OperatorNew<TYPE>, Quad::ObjectLifeTime<TYPE> >::si_destroyed = false

#define INSTANTIATE_SINGLETON_2(TYPE, THREADINGMODEL) \
    template class QUAD_DLL_DECL Quad::Singleton<TYPE, THREADINGMODEL, Quad::OperatorNew<TYPE>, Quad::ObjectLifeTime<TYPE> >; \
    template<> TYPE* Quad::Singleton<TYPE, THREADINGMODEL, Quad::OperatorNew<TYPE>, Quad::ObjectLifeTime<TYPE> >::si_instance = 0; \
    template<> bool Quad::Singleton<TYPE, THREADINGMODEL, Quad::OperatorNew<TYPE>, Quad::ObjectLifeTime<TYPE> >::si_destroyed = false

#define INSTANTIATE_SINGLETON_3(TYPE, THREADINGMODEL, CREATIONPOLICY ) \
    template class QUAD_DLL_DECL Quad::Singleton<TYPE, THREADINGMODEL, CREATIONPOLICY, Quad::ObjectLifeTime<TYPE> >; \
    template<> TYPE* Quad::Singleton<TYPE, THREADINGMODEL, CREATIONPOLICY, Quad::ObjectLifeTime<TYPE> >::si_instance = 0; \
    template<> bool Quad::Singleton<TYPE, THREADINGMODEL, CREATIONPOLICY, Quad::ObjectLifeType<TYPE> >::si_destroyed = false

#define INSTANTIATE_SINGLETON_4(TYPE, THREADINGMODEL, CREATIONPOLICY, OBJECTLIFETIME) \
    template class QUAD_DLL_DECL Quad::Singleton<TYPE, THREADINGMODEL, CREATIONPOLICY, OBJECTLIFETIME >; \
    template<> TYPE* Quad::Singleton<TYPE, THREADINGMODEL, CREATIONPOLICY, OBJECTLIFETIME >::si_instance = 0; \
    template<> bool Quad::Singleton<TYPE, THREADINGMODEL, CREATIONPOLICY, OBJECTLIFETIME >::si_destroyed = false
#endif

