resource "local_file" "kubeconfig" {
  content  = "${data.template_file.kubeconfig.rendered}"
  filename = "${var.config_output_path}${var.cluster_name}/config"
  count    = "${var.write_kubeconfig ? 1 : 0}"
}
