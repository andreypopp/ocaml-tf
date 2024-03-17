(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_launch_template__block_device_mappings__ebs
type aws_launch_template__block_device_mappings

type aws_launch_template__capacity_reservation_specification__capacity_reservation_target

type aws_launch_template__capacity_reservation_specification
type aws_launch_template__cpu_options
type aws_launch_template__credit_specification
type aws_launch_template__elastic_gpu_specifications
type aws_launch_template__elastic_inference_accelerator
type aws_launch_template__enclave_options
type aws_launch_template__hibernation_options
type aws_launch_template__iam_instance_profile
type aws_launch_template__instance_market_options__spot_options
type aws_launch_template__instance_market_options
type aws_launch_template__instance_requirements__accelerator_count

type aws_launch_template__instance_requirements__accelerator_total_memory_mib

type aws_launch_template__instance_requirements__baseline_ebs_bandwidth_mbps

type aws_launch_template__instance_requirements__memory_gib_per_vcpu
type aws_launch_template__instance_requirements__memory_mib

type aws_launch_template__instance_requirements__network_bandwidth_gbps

type aws_launch_template__instance_requirements__network_interface_count

type aws_launch_template__instance_requirements__total_local_storage_gb

type aws_launch_template__instance_requirements__vcpu_count
type aws_launch_template__instance_requirements
type aws_launch_template__license_specification
type aws_launch_template__maintenance_options
type aws_launch_template__metadata_options
type aws_launch_template__monitoring
type aws_launch_template__network_interfaces
type aws_launch_template__placement
type aws_launch_template__private_dns_name_options
type aws_launch_template__tag_specifications
type aws_launch_template

type t = private {
  arn : string prop;
  default_version : float prop;
  description : string prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : string prop;
  id : string prop;
  image_id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_type : string prop;
  kernel_id : string prop;
  key_name : string prop;
  latest_version : float prop;
  name : string prop;
  name_prefix : string prop;
  ram_disk_id : string prop;
  security_group_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_default_version : bool prop;
  user_data : string prop;
  vpc_security_group_ids : string list prop;
}

val aws_launch_template :
  ?default_version:float prop ->
  ?description:string prop ->
  ?disable_api_stop:bool prop ->
  ?disable_api_termination:bool prop ->
  ?ebs_optimized:string prop ->
  ?id:string prop ->
  ?image_id:string prop ->
  ?instance_initiated_shutdown_behavior:string prop ->
  ?instance_type:string prop ->
  ?kernel_id:string prop ->
  ?key_name:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?ram_disk_id:string prop ->
  ?security_group_names:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?update_default_version:bool prop ->
  ?user_data:string prop ->
  ?vpc_security_group_ids:string prop list ->
  block_device_mappings:
    aws_launch_template__block_device_mappings list ->
  capacity_reservation_specification:
    aws_launch_template__capacity_reservation_specification list ->
  cpu_options:aws_launch_template__cpu_options list ->
  credit_specification:aws_launch_template__credit_specification list ->
  elastic_gpu_specifications:
    aws_launch_template__elastic_gpu_specifications list ->
  elastic_inference_accelerator:
    aws_launch_template__elastic_inference_accelerator list ->
  enclave_options:aws_launch_template__enclave_options list ->
  hibernation_options:aws_launch_template__hibernation_options list ->
  iam_instance_profile:aws_launch_template__iam_instance_profile list ->
  instance_market_options:
    aws_launch_template__instance_market_options list ->
  instance_requirements:
    aws_launch_template__instance_requirements list ->
  license_specification:
    aws_launch_template__license_specification list ->
  maintenance_options:aws_launch_template__maintenance_options list ->
  metadata_options:aws_launch_template__metadata_options list ->
  monitoring:aws_launch_template__monitoring list ->
  network_interfaces:aws_launch_template__network_interfaces list ->
  placement:aws_launch_template__placement list ->
  private_dns_name_options:
    aws_launch_template__private_dns_name_options list ->
  tag_specifications:aws_launch_template__tag_specifications list ->
  string ->
  t
