(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capacity_reservation_specification__capacity_reservation_target

val capacity_reservation_specification__capacity_reservation_target :
  ?capacity_reservation_id:string prop ->
  ?capacity_reservation_resource_group_arn:string prop ->
  unit ->
  capacity_reservation_specification__capacity_reservation_target

type capacity_reservation_specification

val capacity_reservation_specification :
  ?capacity_reservation_preference:string prop ->
  ?capacity_reservation_target:
    capacity_reservation_specification__capacity_reservation_target
    list ->
  unit ->
  capacity_reservation_specification

type cpu_options

val cpu_options :
  ?amd_sev_snp:string prop ->
  ?core_count:float prop ->
  ?threads_per_core:float prop ->
  unit ->
  cpu_options

type credit_specification

val credit_specification :
  ?cpu_credits:string prop -> unit -> credit_specification

type ebs_block_device

val ebs_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?snapshot_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  device_name:string prop ->
  unit ->
  ebs_block_device

type enclave_options

val enclave_options : ?enabled:bool prop -> unit -> enclave_options

type ephemeral_block_device

val ephemeral_block_device :
  ?no_device:bool prop ->
  ?virtual_name:string prop ->
  device_name:string prop ->
  unit ->
  ephemeral_block_device

type launch_template

val launch_template :
  ?id:string prop ->
  ?name:string prop ->
  ?version:string prop ->
  unit ->
  launch_template

type maintenance_options

val maintenance_options :
  ?auto_recovery:string prop -> unit -> maintenance_options

type metadata_options

val metadata_options :
  ?http_endpoint:string prop ->
  ?http_protocol_ipv6:string prop ->
  ?http_put_response_hop_limit:float prop ->
  ?http_tokens:string prop ->
  ?instance_metadata_tags:string prop ->
  unit ->
  metadata_options

type network_interface

val network_interface :
  ?delete_on_termination:bool prop ->
  ?network_card_index:float prop ->
  device_index:float prop ->
  network_interface_id:string prop ->
  unit ->
  network_interface

type private_dns_name_options

val private_dns_name_options :
  ?enable_resource_name_dns_a_record:bool prop ->
  ?enable_resource_name_dns_aaaa_record:bool prop ->
  ?hostname_type:string prop ->
  unit ->
  private_dns_name_options

type root_block_device

val root_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  root_block_device

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type aws_spot_instance_request

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
  ?capacity_reservation_specification:
    capacity_reservation_specification list ->
  ?cpu_options:cpu_options list ->
  ?credit_specification:credit_specification list ->
  ?enclave_options:enclave_options list ->
  ?launch_template:launch_template list ->
  ?maintenance_options:maintenance_options list ->
  ?metadata_options:metadata_options list ->
  ?private_dns_name_options:private_dns_name_options list ->
  ?root_block_device:root_block_device list ->
  ?timeouts:timeouts ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  network_interface:network_interface list ->
  unit ->
  aws_spot_instance_request

val yojson_of_aws_spot_instance_request :
  aws_spot_instance_request -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?capacity_reservation_specification:
    capacity_reservation_specification list ->
  ?cpu_options:cpu_options list ->
  ?credit_specification:credit_specification list ->
  ?enclave_options:enclave_options list ->
  ?launch_template:launch_template list ->
  ?maintenance_options:maintenance_options list ->
  ?metadata_options:metadata_options list ->
  ?private_dns_name_options:private_dns_name_options list ->
  ?root_block_device:root_block_device list ->
  ?timeouts:timeouts ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  network_interface:network_interface list ->
  string ->
  t

val make :
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
  ?capacity_reservation_specification:
    capacity_reservation_specification list ->
  ?cpu_options:cpu_options list ->
  ?credit_specification:credit_specification list ->
  ?enclave_options:enclave_options list ->
  ?launch_template:launch_template list ->
  ?maintenance_options:maintenance_options list ->
  ?metadata_options:metadata_options list ->
  ?private_dns_name_options:private_dns_name_options list ->
  ?root_block_device:root_block_device list ->
  ?timeouts:timeouts ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  network_interface:network_interface list ->
  string ->
  t Tf_core.resource
