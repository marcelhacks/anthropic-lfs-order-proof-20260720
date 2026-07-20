# Controlled deployable Git LFS order fixture

The plugin manifest, hook definition, and marker-only script are ordinary Git
blobs. The only Git LFS object is `docs/lfs-tripwire.txt`, which is not needed
to install or run the plugin.

The disclosed `UserPromptSubmit` hook writes only to a path explicitly supplied
through `CONTROLLED_MARKER_FILE`. It does not make network requests, read user
data, or run during the hosted validation workflows.
