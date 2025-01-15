### Autoencoder for the MNIST Dataset returning the +1 increment of input digit

Preprocessing: Feature Scaling (Single Channel Normalization) <br/>
Models Used: PCA, MLP AE, Conv AE, Conv+MLP AE <br/>
Parameters Tested: NN Layer Architecture, Neurons/Layer, Pooling <br/>
Tools Used: scikit-learn, TensorFlow <br/>
Comments: For the evaluation of the results, other than the eye-test, a classifier can be utilized to see if the model outputs are correct. Training times are also available so that efficiency metrics can be used. Note that these measurements, although relevant in the context of comparison, are hardware specific and do not provide objective metrics.
