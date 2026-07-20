terraform {
  required_providers {
    supabase = {
      source  = "supabase/supabase"
      version = "~> 1.0"
    }
  }
}

resource "supabase_storage_bucket" "imagess" {
  project_ref        = var.linked_project
  name               = "images"
  public             = true
  file_size_limit    = "10MB"
  allowed_mime_types = [
    "image/jpeg",
    "image/png",
    "image/webp",
    "image/gif",
    "image/svg+xml"
  ]
}

resource "supabase_storage_bucket" "music" {
  project_ref        = var.linked_project
  name               = "music"
  public             = false
  file_size_limit    = "50MB"
  allowed_mime_types = [
    "audio/mpeg",   # .mp3
    "audio/wav",    # .wav
    "audio/ogg",    # .ogg
    "audio/aac",    # .aac
    "audio/flac"    # .flac
  ]
}

resource "supabase_storage_bucket" "videos" {
  project_ref        = var.linked_project
  name               = "videos"
  public             = false
  file_size_limit    = "500MB"
  allowed_mime_types = [
    "video/mp4",
    "video/webm",
    "video/quicktime", # .mov
    "video/x-msvideo"  # .avi
  ]
}