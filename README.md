# Hackon
Hackethon EY team validator

### 0. Install docker && clone repository
Windows: https://docs.docker.com/docker-for-windows/install/
Mac: https://docs.docker.com/docker-for-mac/install/

Clone repository:
```
git clone https://github.com/OscarMulder/ey-validator.git
```
cd into repository
```
cd ey-validator
```
### 1. Build
```docker build --tag=eyval .```

### 2. Run
```docker run -p 5000:5000 eyval```

### 3. Use
The EY Validator should now be accessible at http://0.0.0.0:5000/

### 4. Find
```docker ps```
Copy the `container id`

### 5. Kill
```
docker kill containerid
```
