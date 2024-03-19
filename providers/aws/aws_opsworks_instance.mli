(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type ebs_block_device

val ebs_block_device :
  ?delete_on_termination:bool prop ->
  ?iops:float prop ->
  ?snapshot_id:string prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  device_name:string prop ->
  unit ->
  ebs_block_device

type ephemeral_block_device

val ephemeral_block_device :
  device_name:string prop ->
  virtual_name:string prop ->
  unit ->
  ephemeral_block_device

type root_block_device

val root_block_device :
  ?delete_on_termination:bool prop ->
  ?iops:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  root_block_device

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_opsworks_instance

val aws_opsworks_instance :
  ?agent_version:string prop ->
  ?ami_id:string prop ->
  ?architecture:string prop ->
  ?auto_scaling_type:string prop ->
  ?availability_zone:string prop ->
  ?created_at:string prop ->
  ?delete_ebs:bool prop ->
  ?delete_eip:bool prop ->
  ?ebs_optimized:bool prop ->
  ?ecs_cluster_arn:string prop ->
  ?elastic_ip:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?infrastructure_class:string prop ->
  ?install_updates_on_boot:bool prop ->
  ?instance_profile_arn:string prop ->
  ?instance_type:string prop ->
  ?os:string prop ->
  ?root_device_type:string prop ->
  ?security_group_ids:string prop list ->
  ?ssh_key_name:string prop ->
  ?state:string prop ->
  ?status:string prop ->
  ?subnet_id:string prop ->
  ?tenancy:string prop ->
  ?virtualization_type:string prop ->
  ?timeouts:timeouts ->
  layer_ids:string prop list ->
  stack_id:string prop ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  root_block_device:root_block_device list ->
  unit ->
  aws_opsworks_instance

val yojson_of_aws_opsworks_instance : aws_opsworks_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  agent_version : string prop;
  ami_id : string prop;
  architecture : string prop;
  auto_scaling_type : string prop;
  availability_zone : string prop;
  created_at : string prop;
  delete_ebs : bool prop;
  delete_eip : bool prop;
  ebs_optimized : bool prop;
  ec2_instance_id : string prop;
  ecs_cluster_arn : string prop;
  elastic_ip : string prop;
  hostname : string prop;
  id : string prop;
  infrastructure_class : string prop;
  install_updates_on_boot : bool prop;
  instance_profile_arn : string prop;
  instance_type : string prop;
  last_service_error_id : string prop;
  layer_ids : string list prop;
  os : string prop;
  platform : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  registered_by : string prop;
  reported_agent_version : string prop;
  reported_os_family : string prop;
  reported_os_name : string prop;
  reported_os_version : string prop;
  root_device_type : string prop;
  root_device_volume_id : string prop;
  security_group_ids : string list prop;
  ssh_host_dsa_key_fingerprint : string prop;
  ssh_host_rsa_key_fingerprint : string prop;
  ssh_key_name : string prop;
  stack_id : string prop;
  state : string prop;
  status : string prop;
  subnet_id : string prop;
  tenancy : string prop;
  virtualization_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?agent_version:string prop ->
  ?ami_id:string prop ->
  ?architecture:string prop ->
  ?auto_scaling_type:string prop ->
  ?availability_zone:string prop ->
  ?created_at:string prop ->
  ?delete_ebs:bool prop ->
  ?delete_eip:bool prop ->
  ?ebs_optimized:bool prop ->
  ?ecs_cluster_arn:string prop ->
  ?elastic_ip:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?infrastructure_class:string prop ->
  ?install_updates_on_boot:bool prop ->
  ?instance_profile_arn:string prop ->
  ?instance_type:string prop ->
  ?os:string prop ->
  ?root_device_type:string prop ->
  ?security_group_ids:string prop list ->
  ?ssh_key_name:string prop ->
  ?state:string prop ->
  ?status:string prop ->
  ?subnet_id:string prop ->
  ?tenancy:string prop ->
  ?virtualization_type:string prop ->
  ?timeouts:timeouts ->
  layer_ids:string prop list ->
  stack_id:string prop ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  root_block_device:root_block_device list ->
  string ->
  t
