1. Search any publicly available Next.js sample application. This can be any static site build
with Next.js. Backend is not really required.
2. Clone this application code from step 1 in your GitHub repository.
3. Deploy this application on AWS Amplify.
a. Provision Amplify infrastructure using terraform.
b. Setup CI/CD pipeline with Amplify’s inbuilt functionality.
4. Create a detailed README file of the steps you followed for this setup.
5. Submit the deployed application url and a link to your repository with a README file in it
to HR Team.


Solution:
---------
* To achieve the above we need to do it manually First. For that we need a opensource next.js application for that i  have taken an opensource next.js application.
* Github url: https://github.com/Kiranteja623/nextjs-s3-upload.git
* I have forked the repository  and cloned the repository to an ec2 machine.
 ![Preview](amplify1.png)
* The manual commands are
  
```
sudo apt update
sudo apt install  nodejs npm -y
git clone https://github.com/Kiranteja623/nextjs-s3-upload.git
ls
cd nextjs-s3-upload/
npm i
npm run dev

```

* Now check  the output using http://localhost:3000
  ![Preview](amplify2.png)
  
* Now we have to write a terraform template to create the infrastructure in AWS.
* The files for Terraform are created in Terraform files folder.
* Now Go to the console and check whether the resource is created or not.
  ![Preview](amplify3.png)
  ![Preview](amplify4.png)
  ![Preview](amplify5.png)
  

Creation of backend through AWS Amplify cli:
---------------------------------------------
* For this we have to take a ec2 instance and install aws cli and aws amplify in it.
* So we take the EC2 and install aws cli using the following commands.
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

```
* Then use aws configure and enter the access key and secret key.
* after that install nodejs and npm on ec2 and perform aws amplifry installation  [referhere](https://docs.amplify.aws/cli/start/install/#configure-the-amplify-cli)
  

![Preview](amplify6.png)

* Install aws amplify using 'sudo npm install -g @aws-amplify/cli --unsafe-perm=true'
* Then Create an IAm user and attach aws amplify policies directly.
  ![Preview](amplify7.png)
* Then perform amplfy configure.
  ![Preview](amplify8.png)

* After that create a new project or use the existing project which we created from terraform.
  ![Preview](amplify10.png)
  ![Preview](amplify11.png)
  ![Preview](amplify12.png)
* Then move to the console and setup run build.
  ![Preview](amplify13.png)
  ![Preview](amplify14.png)
  ![Preview](amplify15.png)
  ![Preview](amplify17.png)
  ![Preview](amplify18.png)
  ![Preview](amplify19.png)
  ![Preview](amplify20.png)
  ![Preview](amplify21.png)
  ![Preview](amplify22.png)
  ![Preview](amplify23.png)
  ![Preview](amplify24.png)
  ![Preview](amplify25.png)
  ![Preview](amplify26.png)
  ![Preview](amplify27.png)
  ![Preview](amplify28.png)
  ![Preview](amplify29.png)
  ![Preview](amplify30.png)
  ![Preview](amplify31.png)
  ![Preview](amplify32.png)
  ![Preview](amplify33.png)
  ![Preview](amplify34.png)
  ![Preview](amplify35.png)
  
* When the deployment is completed the output should be
  ![Preview](amplify16.png)
