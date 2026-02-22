#!/bin/bash
set -e

echo "Restoring NuGet packages..."
dotnet restore jenkins-plugin-model/src/Pi.Web/Pi.Web.csproj

echo "Building project..."
dotnet build jenkins-plugin-model/src/Pi.Web/Pi.Web.csproj --configuration Release --no-restore -m

