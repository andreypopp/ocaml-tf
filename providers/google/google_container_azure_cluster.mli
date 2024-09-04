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

type azure_services_authentication

val azure_services_authentication :
  application_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azure_services_authentication

type control_plane__database_encryption

val control_plane__database_encryption :
  key_id:string prop -> unit -> control_plane__database_encryption

type control_plane__main_volume

val control_plane__main_volume :
  ?size_gib:float prop -> unit -> control_plane__main_volume

type control_plane__proxy_config

val control_plane__proxy_config :
  resource_group_id:string prop ->
  secret_id:string prop ->
  unit ->
  control_plane__proxy_config

type control_plane__replica_placements

val control_plane__replica_placements :
  azure_availability_zone:string prop ->
  subnet_id:string prop ->
  unit ->
  control_plane__replica_placements

type control_plane__root_volume

val control_plane__root_volume :
  ?size_gib:float prop -> unit -> control_plane__root_volume

type control_plane__ssh_config

val control_plane__ssh_config :
  authorized_key:string prop -> unit -> control_plane__ssh_config

type control_plane

val control_plane :
  ?tags:string prop Tf_core.assoc ->
  ?vm_size:string prop ->
  ?database_encryption:control_plane__database_encryption list ->
  ?main_volume:control_plane__main_volume list ->
  ?proxy_config:control_plane__proxy_config list ->
  ?replica_placements:control_plane__replica_placements list ->
  ?root_volume:control_plane__root_volume list ->
  subnet_id:string prop ->
  version:string prop ->
  ssh_config:control_plane__ssh_config list ->
  unit ->
  control_plane

type fleet

val fleet : ?project:string prop -> unit -> fleet

type networking

val networking :
  pod_address_cidr_blocks:string prop list ->
  service_address_cidr_blocks:string prop list ->
  virtual_network_id:string prop ->
  unit ->
  networking

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_container_azure_cluster

val google_container_azure_cluster :
  ?annotations:string prop Tf_core.assoc ->
  ?client:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?azure_services_authentication:azure_services_authentication list ->
  ?timeouts:timeouts ->
  azure_region:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_id:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  fleet:fleet list ->
  networking:networking list ->
  unit ->
  google_container_azure_cluster

val yojson_of_google_container_azure_cluster :
  google_container_azure_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  azure_region : string prop;
  client : string prop;
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
  resource_group_id : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?client:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?azure_services_authentication:azure_services_authentication list ->
  ?timeouts:timeouts ->
  azure_region:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_id:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  fleet:fleet list ->
  networking:networking list ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?client:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?azure_services_authentication:azure_services_authentication list ->
  ?timeouts:timeouts ->
  azure_region:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_id:string prop ->
  authorization:authorization list ->
  control_plane:control_plane list ->
  fleet:fleet list ->
  networking:networking list ->
  string ->
  t Tf_core.resource
