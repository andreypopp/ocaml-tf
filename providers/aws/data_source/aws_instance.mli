(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type credit_specification = {
  cpu_credits : string prop;  (** cpu_credits *)
}

type ebs_block_device = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  kms_key_id : string prop;  (** kms_key_id *)
  snapshot_id : string prop;  (** snapshot_id *)
  tags : string prop Tf_core.assoc;  (** tags *)
  throughput : float prop;  (** throughput *)
  volume_id : string prop;  (** volume_id *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type enclave_options = { enabled : bool prop  (** enabled *) }

type ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  no_device : bool prop;  (** no_device *)
  virtual_name : string prop;  (** virtual_name *)
}

type maintenance_options = {
  auto_recovery : string prop;  (** auto_recovery *)
}

type metadata_options = {
  http_endpoint : string prop;  (** http_endpoint *)
  http_protocol_ipv6 : string prop;  (** http_protocol_ipv6 *)
  http_put_response_hop_limit : float prop;
      (** http_put_response_hop_limit *)
  http_tokens : string prop;  (** http_tokens *)
  instance_metadata_tags : string prop;  (** instance_metadata_tags *)
}

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop;
      (** enable_resource_name_dns_a_record *)
  enable_resource_name_dns_aaaa_record : bool prop;
      (** enable_resource_name_dns_aaaa_record *)
  hostname_type : string prop;  (** hostname_type *)
}

type root_block_device = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  kms_key_id : string prop;  (** kms_key_id *)
  tags : string prop Tf_core.assoc;  (** tags *)
  throughput : float prop;  (** throughput *)
  volume_id : string prop;  (** volume_id *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_instance

val aws_instance :
  ?get_password_data:bool prop ->
  ?get_user_data:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?instance_tags:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_instance

val yojson_of_aws_instance : aws_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ami : string prop;
  arn : string prop;
  associate_public_ip_address : bool prop;
  availability_zone : string prop;
  credit_specification : credit_specification list prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_block_device : ebs_block_device list prop;
  ebs_optimized : bool prop;
  enclave_options : enclave_options list prop;
  ephemeral_block_device : ephemeral_block_device list prop;
  get_password_data : bool prop;
  get_user_data : bool prop;
  host_id : string prop;
  host_resource_group_arn : string prop;
  iam_instance_profile : string prop;
  id : string prop;
  instance_id : string prop;
  instance_state : string prop;
  instance_tags : string Tf_core.assoc prop;
  instance_type : string prop;
  ipv6_addresses : string list prop;
  key_name : string prop;
  launch_time : string prop;
  maintenance_options : maintenance_options list prop;
  metadata_options : metadata_options list prop;
  monitoring : bool prop;
  network_interface_id : string prop;
  outpost_arn : string prop;
  password_data : string prop;
  placement_group : string prop;
  placement_partition_number : float prop;
  private_dns : string prop;
  private_dns_name_options : private_dns_name_options list prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  root_block_device : root_block_device list prop;
  secondary_private_ips : string list prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tenancy : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?get_password_data:bool prop ->
  ?get_user_data:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?instance_tags:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?get_password_data:bool prop ->
  ?get_user_data:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?instance_tags:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
