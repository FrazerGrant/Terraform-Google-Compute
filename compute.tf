resource "google_compute_instance" "default" {
        name = "testcompute"
        machine_type = "f1-micro"
        zone = "us-central1-c"
        boot_disk{
                initialize_params {
                image = "centos 7"
                }
        }
        network_interface {
                network = "default"
                access_config {}
        }
}