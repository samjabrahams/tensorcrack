# `tensorflow/core` macros

## `common_runtime/device_factory.h`

### `REGISTER_LOCAL_DEVICE_FACTORY`

#### Description

#### Definition

```cpp
#define REGISTER_LOCAL_DEVICE_FACTORY(device_type, device_factory, ...) \
  INTERNAL_REGISTER_LOCAL_DEVICE_FACTORY(device_type, device_factory,   \
                                         __COUNTER__, ##__VA_ARGS__)

#define INTERNAL_REGISTER_LOCAL_DEVICE_FACTORY(device_type, device_factory, \
                                               ctr, ...)                    \
  static ::tensorflow::dfactory::Registrar<device_factory>                  \
      INTERNAL_REGISTER_LOCAL_DEVICE_FACTORY_NAME(ctr)(device_type,         \
                                                       ##__VA_ARGS__)

#define INTERNAL_REGISTER_LOCAL_DEVICE_FACTORY_NAME(ctr) ___##ctr##__object_
```

#### Expands to:

```cpp
static ::tensorflow::dfactory::Registrar<device_factory> UNIQUE_NAME(device_type[, __VA_ARGS__])
```

#### Uses

* `tensorflow/core/common_runtime/threadpool_device_factory.cc`
* `tensorflow/core/common_runtime/gpu/gpu_device_factory.cc`

## `common_runtime/optimization_registry.h`

## `distributed_runtime/rpc/grpc_serialization_traits.h`

## `framework/function.h`

## `framework/op.h`

## `framework/op_kernel.h`

## `framework/register_types.h`

## `framework/register_types_traits.h`

## `framework/selective_registration.h`

## `framework/shape_inference_testutil.h`

## `framework/types.h`

## `graph/equal_graph_def.h`

## `lib/core/errors.h`

## `lib/core/status.h`

## `lib/status_test_util.h`

## `lib/gtl/int_type.h`

## `lib/random/philox_random.h`

## `platform/default/dynamic_annotations.h`

## `platform/default/logging.h`

## `platform/default/mutex.h`

## `platform/thread_annotations.h`

## `platform/tracing_impl.h`

## `platform/macros.h`

## `platform/env.h`

## `platform/platform.h`

## `platform/test_benchmark.h`

## `public/version.h`

## `util/cuda_kernel_helper.h`

## `saved_tensor_slice_util.h`