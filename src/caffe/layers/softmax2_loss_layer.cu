#include <algorithm>
#include <cfloat>
#include <vector>

#include "caffe/layer.hpp"
#include "caffe/util/math_functions.hpp"
#include "caffe/vision_layers.hpp"

namespace caffe {

template <typename Dtype>
void Softmax2WithLossLayer<Dtype>::Forward_gpu(
    const vector<Blob<Dtype>*>& bottom, vector<Blob<Dtype>*>* top) {
  Forward_cpu(bottom, top);
}

template <typename Dtype>
void Softmax2WithLossLayer<Dtype>::Backward_gpu(const vector<Blob<Dtype>*>& top,
    const vector<bool>& propagate_down, vector<Blob<Dtype>*>* bottom) {
  // TODO(Yangqing): implement the GPU version of softmax.
  Backward_cpu(top, propagate_down, bottom);
}

INSTANTIATE_CLASS(Softmax2WithLossLayer);


}  // namespace caffe
