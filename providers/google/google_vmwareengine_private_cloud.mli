(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type nsx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type vcenter = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type management_cluster__node_type_configs

val management_cluster__node_type_configs :
  ?custom_core_count:float prop ->
  node_count:float prop ->
  node_type_id:string prop ->
  unit ->
  management_cluster__node_type_configs

type management_cluster__stretched_cluster_config

val management_cluster__stretched_cluster_config :
  ?preferred_location:string prop ->
  ?secondary_location:string prop ->
  unit ->
  management_cluster__stretched_cluster_config

type management_cluster

val management_cluster :
  ?stretched_cluster_config:
    management_cluster__stretched_cluster_config list ->
  cluster_id:string prop ->
  node_type_configs:management_cluster__node_type_configs list ->
  unit ->
  management_cluster

type network_config

val network_config :
  ?vmware_engine_network:string prop ->
  management_cidr:string prop ->
  unit ->
  network_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_private_cloud

val google_vmwareengine_private_cloud :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  management_cluster:management_cluster list ->
  network_config:network_config list ->
  unit ->
  google_vmwareengine_private_cloud

val yojson_of_google_vmwareengine_private_cloud :
  google_vmwareengine_private_cloud -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  hcx : hcx list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  nsx : nsx list prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vcenter : vcenter list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  management_cluster:management_cluster list ->
  network_config:network_config list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  management_cluster:management_cluster list ->
  network_config:network_config list ->
  string ->
  t Tf_core.resource
