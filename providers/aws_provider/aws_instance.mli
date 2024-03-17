(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_instance__capacity_reservation_specification__capacity_reservation_target

type aws_instance__capacity_reservation_specification
type aws_instance__cpu_options
type aws_instance__credit_specification
type aws_instance__ebs_block_device
type aws_instance__enclave_options
type aws_instance__ephemeral_block_device
type aws_instance__instance_market_options__spot_options
type aws_instance__instance_market_options
type aws_instance__launch_template
type aws_instance__maintenance_options
type aws_instance__metadata_options
type aws_instance__network_interface
type aws_instance__private_dns_name_options
type aws_instance__root_block_device
type aws_instance__timeouts
type aws_instance

val aws_instance :
  ?ami:string prop ->
  ?associate_public_ip_address:bool prop ->
  ?availability_zone:string prop ->
  ?cpu_core_count:float prop ->
  ?cpu_threads_per_core:float prop ->
  ?disable_api_stop:bool prop ->
  ?disable_api_termination:bool prop ->
  ?ebs_optimized:bool prop ->
  ?get_password_data:bool prop ->
  ?hibernation:bool prop ->
  ?host_id:string prop ->
  ?host_resource_group_arn:string prop ->
  ?iam_instance_profile:string prop ->
  ?id:string prop ->
  ?instance_initiated_shutdown_behavior:string prop ->
  ?instance_type:string prop ->
  ?ipv6_address_count:float prop ->
  ?ipv6_addresses:string prop list ->
  ?key_name:string prop ->
  ?monitoring:bool prop ->
  ?placement_group:string prop ->
  ?placement_partition_number:float prop ->
  ?private_ip:string prop ->
  ?secondary_private_ips:string prop list ->
  ?security_groups:string prop list ->
  ?source_dest_check:bool prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tenancy:string prop ->
  ?user_data:string prop ->
  ?user_data_base64:string prop ->
  ?user_data_replace_on_change:bool prop ->
  ?volume_tags:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_instance__timeouts ->
  capacity_reservation_specification:
    aws_instance__capacity_reservation_specification list ->
  cpu_options:aws_instance__cpu_options list ->
  credit_specification:aws_instance__credit_specification list ->
  ebs_block_device:aws_instance__ebs_block_device list ->
  enclave_options:aws_instance__enclave_options list ->
  ephemeral_block_device:aws_instance__ephemeral_block_device list ->
  instance_market_options:aws_instance__instance_market_options list ->
  launch_template:aws_instance__launch_template list ->
  maintenance_options:aws_instance__maintenance_options list ->
  metadata_options:aws_instance__metadata_options list ->
  network_interface:aws_instance__network_interface list ->
  private_dns_name_options:
    aws_instance__private_dns_name_options list ->
  root_block_device:aws_instance__root_block_device list ->
  string ->
  unit
