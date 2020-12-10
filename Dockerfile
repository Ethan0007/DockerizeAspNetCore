FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 As base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build
WORKDIR /src
COPY ["AspNetCoreDockerTest.csproj", "./"]
RUN dotnet restore "./AspNetCoreDockerTest.csproj"
COPY . .
RUN dotnet build "AspNetCoreDockerTest.csproj" -c Release -o /app

FROM build as publish
RUN dotnet publish "AspNetCoreDockerTest.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT [ "dotnet", "AspNetCoreDockerTest.dll" ]