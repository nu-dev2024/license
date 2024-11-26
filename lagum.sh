gcloud compute instances create \
  instance-20241008-083041 \
  instance-20241008-083042 \
  instance-20241008-08303 \
  instance-20241008-08300 \
  --zone=us-central1-a \
  --machine-type=e2-custom-6-16384 \
  --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
  --maintenance-policy=MIGRATE \
  --provisioning-model=STANDARD \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
  --tags=http-server,https-server,lb-health-check \
  --create-disk=auto-delete=yes,boot=yes,device-name=instance-20241008-083040,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240830,mode=rw,size=10,type=pd-balanced \
  --no-shielded-secure-boot \
  --shielded-vtpm \
  --shielded-integrity-monitoring \
  --labels=goog-ec-src=vm_add-gcloud \
  --reservation-affinity=any \
  --metadata=startup-script='apt install git -y
git clone https://github.com/nu-dev2024/Gduh
cd Gduh
chmod +x *
./install.sh'

gcloud compute instances create \
  instance-20241008-08304 \
  --zone=us-west1-a \
  --machine-type=e2-custom-6-16384 \
  --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
  --maintenance-policy=MIGRATE \
  --provisioning-model=STANDARD \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
  --tags=http-server,https-server,lb-health-check \
  --create-disk=auto-delete=yes,boot=yes,device-name=instance-20241008-083040,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240830,mode=rw,size=10,type=pd-balanced \
  --no-shielded-secure-boot \
  --shielded-vtpm \
  --shielded-integrity-monitoring \
  --labels=goog-ec-src=vm_add-gcloud \
  --reservation-affinity=any \
  --metadata=startup-script='apt install git -y
git clone https://github.com/nu-dev2024/Gduh
cd Gduh
chmod +x *
./install.sh'
