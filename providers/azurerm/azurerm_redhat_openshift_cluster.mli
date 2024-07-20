(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type api_server_profile

val api_server_profile :
  visibility:string prop -> unit -> api_server_profile

type cluster_profile

val cluster_profile :
  ?fips_enabled:bool prop ->
  ?managed_resource_group_name:string prop ->
  ?pull_secret:string prop ->
  domain:string prop ->
  version:string prop ->
  unit ->
  cluster_profile

type ingress_profile

val ingress_profile :
  visibility:string prop -> unit -> ingress_profile

type main_profile

val main_profile :
  ?disk_encryption_set_id:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  subnet_id:string prop ->
  vm_size:string prop ->
  unit ->
  main_profile

type network_profile

val network_profile :
  ?outbound_type:string prop ->
  ?preconfigured_network_security_group_enabled:bool prop ->
  pod_cidr:string prop ->
  service_cidr:string prop ->
  unit ->
  network_profile

type service_principal

val service_principal :
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  service_principal

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type worker_profile

val worker_profile :
  ?disk_encryption_set_id:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  disk_size_gb:float prop ->
  node_count:float prop ->
  subnet_id:string prop ->
  vm_size:string prop ->
  unit ->
  worker_profile

type azurerm_redhat_openshift_cluster

val azurerm_redhat_openshift_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  api_server_profile:api_server_profile list ->
  cluster_profile:cluster_profile list ->
  ingress_profile:ingress_profile list ->
  main_profile:main_profile list ->
  network_profile:network_profile list ->
  service_principal:service_principal list ->
  worker_profile:worker_profile list ->
  unit ->
  azurerm_redhat_openshift_cluster

val yojson_of_azurerm_redhat_openshift_cluster :
  azurerm_redhat_openshift_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  console_url : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  api_server_profile:api_server_profile list ->
  cluster_profile:cluster_profile list ->
  ingress_profile:ingress_profile list ->
  main_profile:main_profile list ->
  network_profile:network_profile list ->
  service_principal:service_principal list ->
  worker_profile:worker_profile list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  api_server_profile:api_server_profile list ->
  cluster_profile:cluster_profile list ->
  ingress_profile:ingress_profile list ->
  main_profile:main_profile list ->
  network_profile:network_profile list ->
  service_principal:service_principal list ->
  worker_profile:worker_profile list ->
  string ->
  t Tf_core.resource
