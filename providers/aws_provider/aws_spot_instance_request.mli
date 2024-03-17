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

type t = private {
  ami : string prop;
  arn : string prop;
  associate_public_ip_address : bool prop;
  availability_zone : string prop;
  block_duration_minutes : float prop;
  cpu_core_count : float prop;
  cpu_threads_per_core : float prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : bool prop;
  get_password_data : bool prop;
  hibernation : bool prop;
  host_id : string prop;
  host_resource_group_arn : string prop;
  iam_instance_profile : string prop;
  id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_interruption_behavior : string prop;
  instance_state : string prop;
  instance_type : string prop;
  ipv6_address_count : float prop;
  ipv6_addresses : string list prop;
  key_name : string prop;
  launch_group : string prop;
  monitoring : bool prop;
  outpost_arn : string prop;
  password_data : string prop;
  placement_group : string prop;
  placement_partition_number : float prop;
  primary_network_interface_id : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  secondary_private_ips : string list prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  spot_bid_status : string prop;
  spot_instance_id : string prop;
  spot_price : string prop;
  spot_request_state : string prop;
  spot_type : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenancy : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
  user_data_replace_on_change : bool prop;
  valid_from : string prop;
  valid_until : string prop;
  volume_tags : (string * string) list prop;
  vpc_security_group_ids : string list prop;
  wait_for_fulfillment : bool prop;
}

val aws_spot_instance_request :
  ?ami:string prop ->
  ?associate_public_ip_address:bool prop ->
  ?availability_zone:string prop ->
  ?block_duration_minutes:float prop ->
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
  ?instance_interruption_behavior:string prop ->
  ?instance_type:string prop ->
  ?ipv6_address_count:float prop ->
  ?ipv6_addresses:string prop list ->
  ?key_name:string prop ->
  ?launch_group:string prop ->
  ?monitoring:bool prop ->
  ?placement_group:string prop ->
  ?placement_partition_number:float prop ->
  ?private_ip:string prop ->
  ?secondary_private_ips:string prop list ->
  ?security_groups:string prop list ->
  ?source_dest_check:bool prop ->
  ?spot_price:string prop ->
  ?spot_type:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tenancy:string prop ->
  ?user_data:string prop ->
  ?user_data_base64:string prop ->
  ?user_data_replace_on_change:bool prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?volume_tags:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?wait_for_fulfillment:bool prop ->
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
  t
