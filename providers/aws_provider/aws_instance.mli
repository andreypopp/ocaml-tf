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
  ?get_password_data:bool ->
  ?hibernation:bool ->
  ?source_dest_check:bool ->
  ?tags:(string * string) list ->
  ?user_data_replace_on_change:bool ->
  ?volume_tags:(string * string) list ->
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
