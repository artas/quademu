

#ifndef QUAD_SINGLETON_H
#define QUAD_SINGLETON_H

/**
 * @brief class Singleton
 */

#include "CreationPolicy.h"
#include "ThreadingModel.h"
#include "ObjectLifeTime.h"

namespace Quad
{
    template
        <
        typename T,
        class ThreadingModel = Quad::SingleThreaded<T>,
        class CreatePolicy = Quad::OperatorNew<T>,
        class LifeTimePolicy = Quad::ObjectLifeTime<T>
        >
        class QUAD_DLL_DECL Singleton
    {
        public:
            static T& Instance();

        protected:
            Singleton() {};

        private:

            // Prohibited actions...this does not prevent hijacking.
            Singleton(const Singleton &);
            Singleton& operator=(const Singleton &);

            // Singleton Helpers
            static void DestroySingleton();

            // data structure
            typedef typename ThreadingModel::Lock Guard;
            static T *si_instance;
            static bool si_destroyed;
    };
}
#endif

