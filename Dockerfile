FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /home/app
COPY bin/Debug/net6.0/publish .

ENTRYPOINT ["dotnet", "jokes.dll"]