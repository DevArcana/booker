FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY src/Booker.API/*.csproj ./src/Booker.API/
COPY src/Booker.Core/*.csproj ./src/Booker.Core/
COPY src/Booker.Shared/*.csproj ./src/Booker.Shared/

COPY *.sln ./

RUN dotnet restore Booker.sln

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Booker.API.dll"]