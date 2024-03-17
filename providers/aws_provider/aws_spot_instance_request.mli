(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_spot_instance_request__capacity_reservation_specification__capacity_reservation_target

type aws_spot_instance_request__capacity_reservation_specification
type aws_spot_instance_request__cpu_options
type aws_spot_instance_request__credit_specification
type aws_spot_instance_request__ebs_block_device
type aws_spot_instance_request__enclave_options
type aws_spot_instance_request__ephemeral_block_device
type aws_spot_instance_request__launch_template
type aws_spot_instance_request__maintenance_options
type aws_spot_instance_request__metadata_options
type aws_spot_instance_request__network_interface
type aws_spot_instance_request__private_dns_name_options
type aws_spot_instance_request__root_block_device
type aws_spot_instance_request__timeouts
type aws_spot_instance_request

val aws_spot_instance_request :
  ?ami:string ->
  ?associate_public_ip_address:bool ->
  ?availability_zone:string ->
  ?block_duration_minutes:float ->
  ?cpu_core_count:float ->
  ?cpu_threads_per_core:float ->
  ?disable_api_stop:bool ->
  ?disable_api_termination:bool ->
  ?ebs_optimized:bool ->
  ?get_password_data:bool ->
  ?hibernation:bool ->
  ?host_id:string ->
  ?host_resource_group_arn:string ->
  ?iam_instance_profile:string ->
  ?id:string ->
  ?instance_initiated_shutdown_behavior:string ->
  ?instance_interruption_behavior:string ->
  ?instance_type:string ->
  ?ipv6_address_count:float ->
  ?ipv6_addresses:string list ->
  ?key_name:string ->
  ?launch_group:string ->
  ?monitoring:bool ->
  ?placement_group:string ->
  ?placement_partition_number:float ->
  ?private_ip:string ->
  ?secondary_private_ips:string list ->
  ?security_groups:string list ->
  ?source_dest_check:bool ->
  ?spot_price:string ->
  ?spot_type:string ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?tenancy:string ->
  ?user_data:string ->
  ?user_data_base64:string ->
  ?user_data_replace_on_change:bool ->
  ?valid_from:string ->
  ?valid_until:string ->
  ?volume_tags:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?wait_for_fulfillment:bool ->
  ?timeouts:aws_spot_instance_request__timeouts ->
  capacity_reservation_specification:
    aws_spot_instance_request__capacity_reservation_specification
    list ->
  cpu_options:aws_spot_instance_request__cpu_options list ->
  credit_specification:
    aws_spot_instance_request__credit_specification list ->
  ebs_block_device:aws_spot_instance_request__ebs_block_device list ->
  enclave_options:aws_spot_instance_request__enclave_options list ->
  ephemeral_block_device:
    aws_spot_instance_request__ephemeral_block_device list ->
  launch_template:aws_spot_instance_request__launch_template list ->
  maintenance_options:
    aws_spot_instance_request__maintenance_options list ->
  metadata_options:aws_spot_instance_request__metadata_options list ->
  network_interface:aws_spot_instance_request__network_interface list ->
  private_dns_name_options:
    aws_spot_instance_request__private_dns_name_options list ->
  root_block_device:aws_spot_instance_request__root_block_device list ->
  string ->
  unit
