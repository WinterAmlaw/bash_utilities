#!/bin/bash

# Define variables for directories to sort files into
IMAGES_DIR="$HOME/Downloads/images"
VIDEOS_DIR="$HOME/Downloads/videos"
DOCUMENTS_DIR="$HOME/Downloads/documents"
MUSIC_DIR="$HOME/Downloads/music"
ARCHIVES_DIR="$HOME/Downloads/archives"
OTHER_DIR="$HOME/Downloads/other"


mkdir -p "$IMAGES_DIR" "$VIDEOS_DIR" "$DOCUMENTS_DIR" "$MUSIC_DIR" "$ARCHIVES_DIR" "$OTHER_DIR"

find "$HOME/Downloads" -type f -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.svg" | while read IMAGE; do
    mv -- "$IMAGE" "$IMAGES_DIR"
done

find "$HOME/Downloads" -type f -iname "*.mp4" -o -iname "*.mkv" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.wmv" -o -iname "*.flv" | while read VIDEO; do
    mv -- "$VIDEO" "$VIDEOS_DIR"
done

find "$HOME/Downloads" -type f -iname "*.pdf" -o -iname "*.doc" -o -iname "*.docx" -o -iname "*.xls" -o -iname "*.xlsx" -o -iname "*.ppt" -o -iname "*.pptx" -o -iname "*.txt" | while read DOCUMENT; do
    mv -- "$DOCUMENT" "$DOCUMENTS_DIR"
done

find "$HOME/Downloads" -type f -iname "*.mp3" -o -iname "*.m4a" -o -iname "*.flac" -o -iname "*.wav" | while read MUSIC; do
    mv -- "$MUSIC" "$MUSIC_DIR"
done

find "$HOME/Downloads" -type f -iname "*.zip" -o -iname "*.tar" -o -iname "*.gz" -o -iname "*.bz2" -o -iname "*.rar" -o -iname "*.7z" | while read ARCHIVE; do
    mv -- "$ARCHIVE" "$ARCHIVES_DIR"
done

find "$HOME/Downloads" -type f ! -iname "*.png" ! -iname "*.jpg" ! -iname "*.jpeg" ! -iname "*.gif" ! -iname "*.bmp" ! -iname "*.svg" \
                                    ! -iname "*.mp4" ! -iname "*.mkv" ! -iname "*.avi" ! -iname "*.mov" ! -iname "*.wmv" ! -iname "*.flv" \
                                    ! -iname "*.pdf" ! -iname "*.doc" ! -iname "*.docx" ! -iname "*.xls" ! -iname "*.xlsx" ! -iname "*.ppt" ! -iname "*.pptx" ! -iname "*.txt" \
                                    ! -iname "*.mp3" ! -iname "*.m4a" ! -iname "*.flac" ! -iname "*.wav" \
                                    ! -iname "*.zip" ! -iname "*.tar" ! -iname "*.gz" ! -iname "*.bz2" ! -iname "*.rar" ! -iname "*.7z" \
                                    | while read OTHER; do
    mv -- "$OTHER" "$OTHER_DIR"
done