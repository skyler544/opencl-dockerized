# Setup

1. Clone the repository
```bash
mkdir -p ~/workspace/opencl && cd ~/workspace/opencl
git clone https://github.com/skyler544/opencl-dockerized
```
2. Build the image
```bash
docker build -t opencl .
```
3. Run the app
```bash
docker run --device /dev/dri opencl
```

If it worked, you should see output like this:
```
1 platform(s) found
```


# Caveats

This setup will only work on an intel iGPU, as far as I understand.

I have no idea if this will work on Windows, even on an intel processor.
