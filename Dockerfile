FROM mcr.microsoft.com/dotnet/sdk:3.1

COPY DotnetTemplate.Web ./DotnetTemplate.Web
COPY DotnetTemplate.Web.Tests ./DotnetTemplate.Web.Tests
COPY DotnetTemplate.sln DotnetTemplate.sln.DotSettings /
WORKDIR DotnetTemplate.Web
RUN dotnet build

