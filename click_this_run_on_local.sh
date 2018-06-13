MODEL_DIR=output

gcloud ml-engine local train \
	--module-name keras_cnn_model.custom_resNet \
	--package-path /Users/shutao/Documents/GitHub_Shutao/gmle_cnn_keras/keras_cnn_model \
	--job-dir $MODEL_DIR
