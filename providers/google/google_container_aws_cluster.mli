(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}

type authorization__admin_groups

val authorization__admin_groups :
  group:string prop -> unit -> authorization__admin_groups

type authorization__admin_users

val authorization__admin_users :
  username:string prop -> unit -> authorization__admin_users

type authorization

val authorization :
  ?admin_groups:authorization__admin_groups list ->
  admin_users:authorization__admin_users list ->
  unit ->
  authorization

type binary_authorization

val binary_authorization :
  ?evaluation_mode:string prop -> unit -> binary_authorization

type control_plane__aws_services_authentication

val control_plane__aws_services_authentication :
  ?role_session_name:string prop ->
  role_arn:string prop ->
  unit ->
  control_plane__aws_services_authentication

type control_plane__config_encryption

val control_plane__config_encryption :
  kms_key_arn:string prop -> unit -> control_plane__config_encryption

type control_plane__database_encryption

val control_plane__database_encryption :
  kms_key_arn:string prop ->
  unit ->
  control_plane__database_encryption

type control_plane__main_volume

val control_plane__main_volume :
  ?iops:float prop ->
  ?kms_key_arn:string prop ->
  ?size_gib:float prop ->
  ?throughput:float prop ->
  ?volume_type:string prop ->
  unit ->
  control_plane__main_volume

type control_plane__proxy_config

val control_plane__proxy_config :
  secret_arn:string prop ->
  secret_version:string prop ->
  unit ->
  control_plane__proxy_config

type control_plane__root_volume

val control_plane__root_volume :
  ?iops:float prop ->
  ?kms_key_arn:string prop ->
  ?size_gib:float prop ->
  ?throughput:float prop ->
  ?volume_type:string prop ->
  unit ->
  control_plane__root_volume

type control_plane__ssh_config

val control_plane__ssh_config :
  ec2_key_pair:string prop -> unit -> control_plane__ssh_config

type control_plane

val control_plane :
  ?instance_type:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?main_volume:control_plane__main_volume list ->
  ?proxy_config:control_plane__proxy_config list ->
  ?root_volume:control_plane__root_volume list ->
  ?ssh_config:control_plane__ssh_config list ->
  iam_instance_profile:string prop ->
  subnet_ids:string prop list ->
  version:string prop ->
  aws_services_authentication:
    control_plane__aws_services_authentication list ->
  config_encryption:control_plane__config_encryption list ->
  database_encryption:control_plane__database_encryption list ->
  unit ->
  control_plane

type fleet

val fleet : ?project:string prop -> unit -> fleet

type networking

val networking :
  ?per_node_pool_sg_rules_disabled:bool prop ->
  pod_address_cidr_blocks:string prop list ->
  service_address_cidr_blocks:string prop list ->
  vpc_id:string prop ->
  unit ->
  networking

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_container_aws_cluster

val google_container_aws_cluster :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?binary_authorization:binary_authorization list ->
  ?timeouts:timeouts ->
  aws_region:string prop ->
  location:string prop ->
  name:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  fleet:fleet list ->
  networking:networking list ->
  unit ->
  google_container_aws_cluster

val yojson_of_google_container_aws_cluster :
  google_container_aws_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  aws_region : string prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : string Tf_core.assoc prop;
  endpoint : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?binary_authorization:binary_authorization list ->
  ?timeouts:timeouts ->
  aws_region:string prop ->
  location:string prop ->
  name:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  fleet:fleet list ->
  networking:networking list ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?binary_authorization:binary_authorization list ->
  ?timeouts:timeouts ->
  aws_region:string prop ->
  location:string prop ->
  name:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  fleet:fleet list ->
  networking:networking list ->
  string ->
  t Tf_core.resource
