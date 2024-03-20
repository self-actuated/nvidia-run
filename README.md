# nvidia-run

GitHub Action to install the Nividia drivers from the .run file

Works for consumer cards i.e. Nvidia 3060, and datacenter cards i.e. Nvidia A100

Usage:

```yaml
- uses: self-actuated/nvidia-run@master
```

Or, if you need to run the installer from bash, use:

```bash
curl https://raw.githubusercontent.com/self-actuated/nvidia-run/master/setup-nvidia-run.sh | sh
```

You'll need `sudo` to be available.
