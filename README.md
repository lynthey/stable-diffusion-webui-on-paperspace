# stable-diffusion-webui-on-paperspace

python -m http.server --bind localhost --directory=/storage/torchmirror/ 8000

# root@ne06n1umij:/storage# ls -l `find config/*.*`
-rw-rw-rw- 1 root root 46440 Mar  1 11:40 config/1_DOWNLOAD.ipynb
-rw-rw-rw- 1 root root 71546 Mar  2 23:43 config/2_START.ipynb
-rw-rw-rw- 1 root root 38372 Mar  2 10:35 config/3_CONFIGURATION.ipynb
-rw-r--r-- 1 root root   117 Mar  2 23:45 config/README.md

# root@ne06n1umij:/storage# ls -l `find torchmirror/ -type f`
-rw-r--r-- 1 root root     536198 Oct  6 21:35 torchmirror/mpmath/mpmath-1.3.0-py3-none-any.whl
-rw-r--r-- 1 root root    1647772 Jan 30 19:13 torchmirror/networkx/networkx-3.2.1-py3-none-any.whl
-rw-r--r-- 1 root root    4487681 Jan 30 19:13 torchmirror/pillow/pillow-10.2.0-cp310-cp310-manylinux_2_28_x86_64.whl
-rw-r--r-- 1 root root    5742435 Sep 22 23:36 torchmirror/sympy/sympy-1.12-py3-none-any.whl
-rw-r--r-- 1 root root 2267321259 Oct  6 20:56 torchmirror/torch/torch-2.0.1+cu118-cp310-cp310-linux_x86_64.whl
-rw-r--r-- 1 root root    4403661 Oct  6 21:35 torchmirror/torchaudio/torchaudio-2.0.2+cu118-cp310-cp310-linux_x86_64.whl
-rw-r--r-- 1 root root    4623727 Oct  6 21:43 torchmirror/torchdata/torchdata-0.6.1-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
-rw-r--r-- 1 root root    2004303 Oct  6 21:45 torchmirror/torchtext/torchtext-0.15.2+cpu-cp310-cp310-linux_x86_64.whl
-rw-r--r-- 1 root root    6070123 Oct  6 21:35 torchmirror/torchvision/torchvision-0.15.2+cu118-cp310-cp310-linux_x86_64.whl
-rw-r--r-- 1 root root   63268585 Oct  6 21:48 torchmirror/triton/triton-2.0.0-1-cp310-cp310-manylinux2014_x86_64.manylinux_2_17_x86_64.whl