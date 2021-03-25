FROM mcr.microsoft.com/dotnet/sdk:3.1
COPY DotnetTemplate.Web ./DotnetTemplate.Web
COPY DotnetTemplate.Web.Tests ./DotnetTemplate.Web.Tests
COPY DotnetTemplate.sln DotnetTemplate.sln.DotSettings /
WORKDIR /DotnetTemplate.Web
RUN dotnet build
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - 
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN npm install
RUN npm run build
ENTRYPOINT [ "dotnet", "run" ]