export BUCKET_NAME=sunnytest1
export JOB_NAME="model_train_$(date +%Y%m%d_%H%M%S)"
export JOB_DIR=gs://$BUCKET_NAME/$JOB_NAME
export REGION=asia-east1

gcloud ml-engine jobs submit training $JOB_NAME \
	--module-name keras_cnn_model.custom_resNet \
	--runtime-version 1.8 \
	--job-dir gs://$BUCKET_NAME/$JOB_NAME \
	--package-path keras_cnn_model \
	--region $REGION \
	--config keras_cnn_model/cloudml-gpu.yaml