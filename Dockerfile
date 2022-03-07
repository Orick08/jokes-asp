FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /home/app
COPY . ./
RUN dotnet publish
RUN dotnet run
