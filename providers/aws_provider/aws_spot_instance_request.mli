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
  ?block_duration_minutes:float ->
  ?get_password_data:bool ->
  ?hibernation:bool ->
  ?instance_interruption_behavior:string ->
  ?launch_group:string ->
  ?source_dest_check:bool ->
  ?spot_type:string ->
  ?tags:(string * string) list ->
  ?user_data_replace_on_change:bool ->
  ?volume_tags:(string * string) list ->
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
