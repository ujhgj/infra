provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

module "app" {
  source                          = "../../modules/app"
  public_key_path                 = "${var.public_key_path}"
  app_disk_image                  = "${var.app_disk_image}"
  provisioner_connection_key_path = "${var.provisioner_connection_key_path}"
  environment                     = "prod"
}

module "db" {
  source          = "../../modules/db"
  public_key_path = "${var.public_key_path}"
  db_disk_image   = "${var.db_disk_image}"
  environment     = "prod"
}

module "vpc" {
  source        = "../../modules/vpc"
  source_ranges = "${var.ssh_source_ranges}"
  environment   = "prod"
}
