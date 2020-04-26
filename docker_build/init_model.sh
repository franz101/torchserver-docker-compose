
torch-model-archiver --model-name densenet161 \
--version 1.0 --model-file /home/model-server/model.py \
--serialized-file densenet161-8d451a50.pth \
--extra-files /home/model-server/index_to_name.json \
--handler image_classifier

ls *.mar

mkdir model_store
mv densenet161.mar model_store/

#response=$(curl --write-out %{http_code} --silent --output /dev/null --retry 5 -X POST "http://localhost:8081/models?url=https://torchserve.s3.amazonaws.com/mar_files/resnet-18.mar&initial_workers=1&synchronous=true")
#
#if [ ! "$response" == 200 ]
#then
#    echo "failed to register model with torchserve"
#else
#    echo "successfully registered resnet-18 model with torchserve"
#fi
#
#echo "TorchServe is up and running with resnet-18 model"
#echo "Management APIs are accessible on http://127.0.0.1:8081"
#echo "Inference APIs are accessible on http://127.0.0.1:8080"
#echo "For more details refer TorchServe documentation"
#echo "To stop docker container for TorchServe use command : docker container stop $container_id"
