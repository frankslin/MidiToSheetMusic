PROJECT = MidiToSheetMusic.csproj
OUTDIR = bin

all:
	dotnet publish $(PROJECT) -c Release -o $(OUTDIR)

# Invoked through the shared runtime rather than the bin/sheet apphost, which
# only finds .NET when it sits in a standard location or DOTNET_ROOT is set.
run: all
	dotnet $(OUTDIR)/sheet.dll songs/sample.mid sample

clean:
	rm -rf $(OUTDIR) obj

.PHONY: all run clean
