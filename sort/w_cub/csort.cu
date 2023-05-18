#include <cub/cub.cuh>

extern "C" {
// Sort for integer arrays
void sort_int_wrapper(int *i_data, int *o_data, int N) {
  void *d_temp_storage = NULL;
  size_t temp_storage_bytes = 0;
  cub::DeviceRadixSort::SortKeys(d_temp_storage, temp_storage_bytes, i_data,
                                 o_data, N);
  cudaMalloc(&d_temp_storage, temp_storage_bytes);
  cub::DeviceRadixSort::SortKeys(d_temp_storage, temp_storage_bytes, i_data,
                                 o_data, N);
  cudaFree(d_temp_storage);
}
}
