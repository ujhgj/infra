variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable provisioner_connection_key_path {
  description = "Path to the private key used for provisioner's ssh access"
}

variable app_disk_image {
  description = "Disk image for Reddit app server"
}

variable db_disk_image {
  description = "Disk image for Reddit database server"
}

variable ssh_source_ranges {
  description = "IP ranges where you can connect from using SSH"
  type        = "list"
}
