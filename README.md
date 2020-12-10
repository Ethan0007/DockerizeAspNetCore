# Containerizing ASP.NET CORE 3.1 Web API
Docker is an open platform for developing, shipping, and running applications. 
Docker enables you to separate your applications from your infrastructure so you can deliver software quickly.
With Docker, you can manage your infrastructure in the same ways you manage your applications.   

Written in: Go   
Initial release date: March 20, 2013   
Developer: Docker, Inc.   

## Requirements   
 * .NET Core 3.1  
 * VSCode  
 * Docker  
 
## Running the application:  
1. Run Docker on your local machine.
1. docker build -t asp-net-core-docker-test:v1 . 
   - it will download images for aspnet 3.1 and sdk 3.1 (wait until the download done).
2. to verify the image enter command:  docker images
3. to run the image enter the command: docker run -t --rm -p:9090:80 asp-net-core-docker-test:v1

 ## License 
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  
  Copyright (c) 2020 [Joever Monceda](https://github.com/Ethan0007)


  Linkedin: [Joever Monceda](https://www.linkedin.com/in/joever-monceda-55242779/)  
  Medium: [Joever Monceda](https://medium.com/@joever.monceda/new-net-core-vuejs-vuex-router-webpack-starter-kit-e94b6fdb7481)  
  Twitter [@_EthanHunt07](https://twitter.com/_EthanHunt07)  
  Facebook: [JH Hunt](https://www.facebook.com/nethan.hound.3)
