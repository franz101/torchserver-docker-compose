echo "Registering densenet model"
curl -O https://download.pytorch.org/models/densenet161-8d451a50.pth
curl -O https://raw.githubusercontent.com/pytorch/serve/master/examples/image_classifier/densenet_161/model.py
curl -O https://raw.githubusercontent.com/pytorch/serve/master/examples/image_classifier/index_to_name.json