-include User.mk
-include ../User.mk
-include ~/User.mk

.PHONY: all
## Runs unit the tests.
all:test

.PHONY: test
## Runs the unit tests.
test: clean
	dotnet test -c Release --collect:"XPlat Code Coverage" -- DataCollectionRunSettings.DataCollectors.DataCollector.Configuration.Format=opencover
ifeq ($(ENV),'DEV')
	dotnet ~/.nuget/packages/reportgenerator/5.1.9/tools/netcoreapp3.1/ReportGenerator.dll  "-reports:./SimpleSearch.Tests/TestResults/**/coverage.opencover.xml" "-targetdir:coveragereport" -reporttypes:Html
endif

.PHONY: start
## Starts the app.
start:
	dotnet run

.PHONY: clean
## Removes generated files.
clean:
	dotnet clean
	dotnet clean -c Release
	rm -rf test/SimpleSearch.Tests/TestResults
	rm -rf coveragereport

## build
.PHONY: build
build:
	dotnet build -c Release 

.PHONY: publish
publish:
	dotnet publish -c Release