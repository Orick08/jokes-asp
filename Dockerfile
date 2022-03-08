#Generate base SDK
FROM mcr.microsoft.com/dotnet/sdk:6.0 as build-env
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY . .
RUN dotnet publish
CMD ASPNETCORE_URLS=http//*:$PORT dotnet bin/Debug/net6.0/jokes.dll