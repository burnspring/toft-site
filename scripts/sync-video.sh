#!/usr/bin/env bash
# Copy the tour — the video, its poster, captions and transcript — out of the
# briefing repository, which builds them (video/build.sh) and holds the one
# copy. Neither repository edits the other's: re-run this after a new take.
set -euo pipefail
here="$(cd "$(dirname "$0")/.." && pwd)"
src="${TOFT_BRIEFING:-$here/../toft-briefing}/assets"
mkdir -p "$here/public/video"
for f in toft-tour.mp4 toft-tour-poster.jpg toft-tour.vtt toft-tour-transcript.txt; do
  cp "$src/$f" "$here/public/video/$f"
done
echo "synced the tour from $src"
