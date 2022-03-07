FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /home/app
RUN dotnet publish
COPY bin/Debug/net6.0/publish .

ENTRYPOINT ["dotnet", "jokes.dll"]