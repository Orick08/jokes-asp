#Generate base SDK
FROM mcr.microsoft.com/dotnet/sdk:6.0 as build-env
WORKDIR /app

#Copy csproj
COPY *.csproj ./
RUN dotnet restore

#Copy the project files and publish
COPY . ./
RUN dotnet publish -c Release -o out

#Generate runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app

CMD ASPNETCORE_URLS=http//*:$PORT dotnet jokes.dll