output "id" {
  value       = google_compute_instance.default.id
  description = "an identifier for the resource with format"
}
output "instance_id" {
  value       = google_compute_instance.default.instance_id
  description = "The server-assigned unique identifier of this instance"
}
output "cpu_platform" {
  value       = google_compute_instance.default.cpu_platform
  description = "The CPU platform used by this instance"
}
