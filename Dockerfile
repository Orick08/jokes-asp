FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /home/app
COPY . ./
RUN dotnet publish

ENTRYPOINT ["dotnet", "bin/Debug/net6.0/jokes.dll"]