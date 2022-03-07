FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /home/app
COPY . ./
RUN dotnet publish
RUN cd bin/Debug/net6.0

ENTRYPOINT ["dotnet", "jokes.dll"]