(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kube_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  expires_at : string prop;  (** expires_at *)
  host : string prop;  (** host *)
  raw_config : string prop;  (** raw_config *)
  token : string prop;  (** token *)
}

[@@@deriving.end]

type maintenance_policy

val maintenance_policy :
  ?day:string prop ->
  ?start_time:string prop ->
  unit ->
  maintenance_policy

type node_pool__nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}

[@@@deriving.end]

type node_pool__taint

val node_pool__taint :
  effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  node_pool__taint

type node_pool

val node_pool :
  ?auto_scale:bool prop ->
  ?labels:(string * string prop) list ->
  ?max_nodes:float prop ->
  ?min_nodes:float prop ->
  ?node_count:float prop ->
  ?tags:string prop list ->
  name:string prop ->
  size:string prop ->
  taint:node_pool__taint list ->
  unit ->
  node_pool

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type digitalocean_kubernetes_cluster

val digitalocean_kubernetes_cluster :
  ?auto_upgrade:bool prop ->
  ?destroy_all_associated_resources:bool prop ->
  ?ha:bool prop ->
  ?id:string prop ->
  ?registry_integration:bool prop ->
  ?surge_upgrade:bool prop ->
  ?tags:string prop list ->
  ?vpc_uuid:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  version:string prop ->
  maintenance_policy:maintenance_policy list ->
  node_pool:node_pool list ->
  unit ->
  digitalocean_kubernetes_cluster

val yojson_of_digitalocean_kubernetes_cluster :
  digitalocean_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_upgrade : bool prop;
  cluster_subnet : string prop;
  created_at : string prop;
  destroy_all_associated_resources : bool prop;
  endpoint : string prop;
  ha : bool prop;
  id : string prop;
  ipv4_address : string prop;
  kube_config : kube_config list prop;
  name : string prop;
  region : string prop;
  registry_integration : bool prop;
  service_subnet : string prop;
  status : string prop;
  surge_upgrade : bool prop;
  tags : string list prop;
  updated_at : string prop;
  urn : string prop;
  version : string prop;
  vpc_uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_upgrade:bool prop ->
  ?destroy_all_associated_resources:bool prop ->
  ?ha:bool prop ->
  ?id:string prop ->
  ?registry_integration:bool prop ->
  ?surge_upgrade:bool prop ->
  ?tags:string prop list ->
  ?vpc_uuid:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  version:string prop ->
  maintenance_policy:maintenance_policy list ->
  node_pool:node_pool list ->
  string ->
  t

val make :
  ?auto_upgrade:bool prop ->
  ?destroy_all_associated_resources:bool prop ->
  ?ha:bool prop ->
  ?id:string prop ->
  ?registry_integration:bool prop ->
  ?surge_upgrade:bool prop ->
  ?tags:string prop list ->
  ?vpc_uuid:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  version:string prop ->
  maintenance_policy:maintenance_policy list ->
  node_pool:node_pool list ->
  string ->
  t Tf_core.resource
