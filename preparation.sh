#!/bin/sh
echo nohup python -u -m http.server --bind localhost --directory=/storage/torchmirror/ 8000
nohup python -u -m http.server --bind localhost --directory=/storage/torchmirror/ 8000 &

apt update
apt -y install python3.10
apt -y install libpython3.10-dev
apt -y install build-essential
apt -y install ffmpeg
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10
python3.10 -m pip install setuptools==69.5.1
#python3.10 -m pip install torch==2.0.1+cu118 torchvision==0.15.2+cu118 torchaudio==2.0.2+cu118 torchtext==0.15.2 torchdata==0.6.1 --extra-index-url http://localhost:8000/ -U
#python3.10 -m pip install xformers==0.0.20 triton==2.0.0 -U
python3.10 -m pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 torchdata==0.7.1 torchtext==0.16.2+cpu xformers==0.0.23.post1 --index-url https://download.pytorch.org/whl/cu121 -U
python3.10 -m pip install httpx==0.24.1
python3.10 -m pip install httpx==0.24.1
#!python3.10 -m pip install insightface -U
python3.10 -m pip install matplotlib -U
python3.10 -m pip install ipython -U


#(2) モデルのダウンロード（ここにダウンロードしたいモデルを追加）
#%cd /storage/stable-diffusion-webui/models/Stable-diffusion
# User Browser
#!wget -nc https://huggingface.co/personal1802/31/resolve/main/zhmixFantasy_v30.safetensors
#!wget -nc https://huggingface.co/digiplay/ZHMix-Dramatic-v3.0/resolve/refs%2Fpr%2F1/zhmixDramatic_v30.safetensors
#!wget -nc -O ponyDiffusionV6XL_v6StartWithThisOne.safetensors "https://civitai.com/api/download/models/290640?type=Model&format=SafeTensor&size=pruned&fp=fp16"
#!wget -nc -O waiREALMIX_v90.safetensors "https://civitai.com/api/download/models/717529?type=Model&format=SafeTensor&size=pruned&fp=fp16"
#!wget -nc -O wai-REAL_CN_v10.0.safetensors 'https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/31176/waiREALCN10.Nfvv.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22waiREALCN_v100.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20240825/us-east-1/s3/aws4_request&X-Amz-Date=20240825T075849Z&X-Amz-SignedHeaders=host&X-Amz-Signature=3371a3124048869c3ddebbfd4524b1eb0af84e6a33bdeab32a195afb84bd484e'
#!wget -nc -O wai-ANINSFWPONY_v70.safetensors 'https://civitai.com/api/download/models/700352?type=Model&format=SafeTensor&size=pruned&fp=fp16'
#!wget -nc https://civitai.com/api/download/models/16859 -O BlueberryMix-1.0.safetensors
#!wget -nc https://civitai.com/api/download/models/11745 -O Chilloutmix-Ni-pruned-fp32-fix.safetensors
#!wget -nc https://huggingface.co/sazyou-roukaku/chilled_remix/resolve/5876389637f3f82d2b33a609f85f9b36aa4748fe/chilled_remix_v1vae.safetensors -O chilled_remix_v1vae.safetensors
#!wget -nc https://huggingface.co/sazyou-roukaku/chilled_remix/resolve/main/chilled_remix_v2.safetensors -O chilled_remix_v2.safetensors
#!wget -nc https://huggingface.co/nolanaatama/prfctwrld/resolve/main/prfctwrld.safetensors
#!wget -nc https://huggingface.co/fp16-guy/Fantexi_v0.9Beta_fp16_cleaned/resolve/main/fantexiV09beta_fantexiV09beta_fp16.safetensors
#!wget -nc https://huggingface.co/digiplay/ZHMix-Dramatic-v3.0/resolve/main/zhmixDramatic_v30.safetensors
#!wget -nc https://civitai.com/api/download/models/222442 -O zhmixFantasy_v30.safetensors 
#!wget -O momoiropony_v15.safetensors 'https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/259963/momoiroponyV15.yK60.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22momoiropony_v15.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20240922/us-east-1/s3/aws4_request&X-Amz-Date=20240922T030556Z&X-Amz-SignedHeaders=host&X-Amz-Signature=5c105d22273a4a983b44aaeec63a1455678464ae130c24de4df6cd79a9f19902' 
#!wget -nc -O wai-REAL_CN_v120.safetensors 'https://civitai.com/api/download/models/890231?type=Model&format=SafeTensor&size=pruned&fp=fp16'
#!wget -nc -O wai-REAL_CN_v130.safetensors 'https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/31176/waiREALCN13.WbYb.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22waiREALCN_v130.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20241019/us-east-1/s3/aws4_request&X-Amz-Date=20241019T143940Z&X-Amz-SignedHeaders=host&X-Amz-Signature=c9267b0e23cce5fdc94f4a812d026d6920b9d326e1c652614af69ea172b53476'

#%cd /storage/stable-diffusion-webui/embeddings
#!wget -nc https://civitai.com/api/download/models/60938 -O negative_hand-neg.pt
#!wget -nc https://huggingface.co/datasets/Nerfgun3/bad_prompt/resolve/main/bad_prompt_version2.pt -O bad_prompt.pt
#!wget -nc https://huggingface.co/datasets/gsdf/EasyNegative/resolve/main/EasyNegative.safetensors
#!wget -nc https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/NG_DeepNegative_V1_75T.pt
#!wget -nc https://huggingface.co/yesyeahvh/bad-hands-5/resolve/main/bad-hands-5.pt

#%cd /storage/stable-diffusion-webui/models/ESRGAN
#!wget https://huggingface.co/lokCX/4x-Ultrasharp/resolve/main/4x-UltraSharp.pth

#%cd /storage/stable-diffusion-webui/models/Lora/
#!wget -nc https://huggingface.co/nolanaatama/fshngrl/resolve/main/fshngrl.safetensors
#!wget -nc https://huggingface.co/tomspy/shojovibe_v11.safetensors/resolve/main/shojovibe_v11.safetensors
##!wget -O shinyOiledSkin_v2.safetensors https://civitai.com/api/download/models/57468
#!wget -nc https://huggingface.co/ashen-sensored/mzpikas_tmnd_enhanced/resolve/main/Silicon-landscape-isolation.safetensors
#!wget -nc -O multipleassesv1.safetensors https://civitai.com/api/download/models/55644
#!wget -nc https://huggingface.co/naonovn/Lora/resolve/main/MultipleGirlsGroup.safetensors
#!wget -nc https://huggingface.co/naonovn/Lora/resolve/main/MultipleGirlsGroup.png
#!wget -nc https://huggingface.co/mlida/Cute_girl_mix4/resolve/main/cuteGirlMix4_v10.safetensors
#!wget -nc https://huggingface.co/ship01/AIdamoxing/resolve/main/GirlfriendMix2.safetensors
#!wget -nc -O Shinyoiledskin.safetensors https://civitai.com/api/download/models/57459
#!wget -nc -O Roleplaylingeriewithgarterbeltandskirts.safetensors https://civitai.com/api/download/models/164656
#!wget -nc -O eropose_allfours.safetensors https://civitai.com/api/download/models/102047
#!wget -nc -O Bubble_Bath.safetensors 'https://civitai.com/api/download/models/136541?type=Model&format=SafeTensor'
#!wget -nc -O bubblesuds.safetensors https://civitai.com/api/download/models/57654
#!wget -nc -O ShinyOiledSkin_v20-LyCORIS.safetensors 'https://civitai.com/api/download/models/57459?type=Model&format=SafeTensor'
#!wget -nc -O cumbath.safetensors 'https://civitai.com/api/download/models/132951?type=Model&format=SafeTensor'
#!wget -nc -O concept-pov-multiple_views-v1.safetensors 'https://civitai.com/api/download/models/60964?type=Model&format=SafeTensor'
#!wget -nc -O hairdetailer.safetensors 'https://civitai.com/api/download/models/86284?type=Model&format=SafeTensor'
#!wget -nc -O GoodHands-beta2.safetensors 'https://civitai.com/api/download/models/55199?type=Model&format=SafeTensor'
#!wget -nc https://huggingface.co/OedoSoldier/detail-tweaker-lora/resolve/main/add_detail.safetensors
#!wget -nc -O '0156 bubble bath_v1.safetensors' https://civitai.com/api/download/models/320694
#!wget -nc -O hiqcg_body_epoch.safetensors https://civitai.com/api/download/models/10301
#!wget -nc -O 0639_hugging_own_legs_v1_pony.safetensors https://civitai.com/api/download/models/552881
#!wget -nc -O sdxl_vae_torn_clothes_pony_V1.0 https://civitai.com/api/download/models/575968
#!wget -nc -O AAG-enako2.safetensors "https://civitai.com/api/download/models/119927"
#!wget -nc -O lotionXLP-v1.safetensors 'https://civitai.com/api/download/models/624776?type=Model&format=SafeTensor'
#!wget -nc -O JP_JOSHI_ROOM_PONY_V2.safetensors 'https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/34205/jpJOSHIROOMPONYV2.8VmA.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22JP_JOSHI_ROOM_PONY_V2.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20241020/us-east-1/s3/aws4_request&X-Amz-Date=20241020T134214Z&X-Amz-SignedHeaders=host&X-Amz-Signature=cd66256dac07c5bc98cd6468b3a5bcae1ba5a9e64d4f1a72d63146464c7ff564'

#%cd /storage/stable-diffusion-webui/models/VAE
#!wget -nc https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors
#!wget -nc -O sdxl_vae.safetensors "https://civitai.com/api/download/models/290640?type=VAE&format=SafeTensor"
#
#%cd /storage/stable-diffusion-webui/extensions/sd-webui-controlnet/models/
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.yaml
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.pth
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.yaml
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.yaml
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.yaml
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth
#!wget -nc https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.yaml



#%cd /storage/stable-diffusion-webui/models/adetailer
#!wget -nc https://huggingface.co/Bingsu/adetailer/resolve/main/face_yolov8s.pt
#!wget -nc https://huggingface.co/Bingsu/adetailer/resolve/main/hand_yolov8s.pt
