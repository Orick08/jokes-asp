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
ENV ASPNETCORE_URLS=http://*:8080
EXPOSE 8080
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "jokes.dll"]