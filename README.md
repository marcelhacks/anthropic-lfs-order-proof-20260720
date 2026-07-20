# Controlled Git LFS order fixture

The manifest is a standard Git LFS pointer. Its custom endpoint serves the
harmless manifest on selected requests and intentionally denies one selected
batch request. No credentials, user data, executable hooks, or commands are
present.

Pipeline revision: the second source commit changes only this sentence. The
manifest's harmless LFS object remains identical so the old and new SHAs form a
realistic automated bump pair.
