# File Checklist

The idea is to put every C/C++ macro in the TensorFlow repository into one file to make it easier to find definition locations, usages, and explanations. God help me.

## `/cc`

- `tensorflow/cc/client`: NONE
- `tensorflow/cc/framework`:
    - [ ] grad_op_registry.h

## `/core`

- `tensorflow/core/common_runtime`:
    - [ ] device_factory.h
    - [ ] optimization_registry.h
- `tensorflow/core/debug` NONE
- `tensorflow/core/distributed_runtime`:
    - [ ] rpc/grpc_serialization_traits.h
- `tensorflow/core/example` NONE
- `tensorflow/core/framework`:
    - [ ] function.h
    - [ ] op.h
    - [ ] ok_kernel.h
    - [ ] register_types.h
    - [ ] register_types_traits.h
    - [ ] selective_registration.h
    - [ ] shape_inference_testutil.h
    - [ ] types.h
- `tensorflow/core/graph`
    - [ ] equal_graph_def.h
- `tensorflow/core/kernels`: SKIPPING
- `tensorflow/core/lib`:
    - `/core`:
        - [ ] errors.h
        - [ ] status.h
        - [ ] status_test_util.h
    - `/gif`: NONE
    - `/gtl`: 
        - [ ] int_type.h
    - `/hash`: NONE
    - `/histogram`: NONE
    - `/io`: NONE
    - `/jpeg`: NONE
    - `/math`: NONE
    - `/monitoring`: NONE
    - `/png`: NONE
    - `/random`:
        - [ ] philox_random.h
    - `/strings`: NONE
    - `/wav`: NONE
- `tensorflow/core/ops`: NONE
- `tensorflow/core/platform`:
    - [ ] macros.h
    - [ ] env.h
    - [ ] platform.h
    - [ ] test_benchmark.h
    - `/default`:
        - [ ] dynamic_annotations.h
        - [ ] logging.h
        - [ ] mutex.h
        - [ ] thread_annotations.h
        - [ ] tracing_impl.h
- `tensorflow/core/protobuf`: NONE
- `tensorflow/core/public`:
    - [ ] version.h
- `tensorflow/core/util`: 
    - `/ctc`: NONE
    - `/sparse`: NONE
    - [ ] cuda_kernel_helper.h
    - [ ] saved_tensor_slice_util.h

## `/stream_executor`

- `tensorflow/stream_executor/`
    - `/cuda`: NONE 
    - `/lib`:
        - [ ] initialize.h
        - [ ] static_threadlocal.h
        - [ ] status.h
        - [ ] status_macros.h
    - `/platform`:
        - `/default`:
            - [ ] mutex.h
        - [ ] logging.h
        - [ ] port.h
    - [ ] blas.h
    - [ ] fft.h
    - [ ] gcuda.h
    - [ ] platform.h
    - [ ] plugin.h

---