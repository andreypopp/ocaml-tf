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

type maintenance_policy = {
  day : string prop;  (** day *)
  duration : string prop;  (** duration *)
  start_time : string prop;  (** start_time *)
}

type node_pool__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type node_pool__nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}

type node_pool = {
  actual_node_count : float prop;  (** actual_node_count *)
  auto_scale : bool prop;  (** auto_scale *)
  id : string prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  max_nodes : float prop;  (** max_nodes *)
  min_nodes : float prop;  (** min_nodes *)
  name : string prop;  (** name *)
  node_count : float prop;  (** node_count *)
  nodes : node_pool__nodes list;  (** nodes *)
  size : string prop;  (** size *)
  tags : string prop list;  (** tags *)
  taint : node_pool__taint list;  (** taint *)
}

type digitalocean_kubernetes_cluster

val digitalocean_kubernetes_cluster :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  unit ->
  digitalocean_kubernetes_cluster

val yojson_of_digitalocean_kubernetes_cluster :
  digitalocean_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_upgrade : bool prop;
  cluster_subnet : string prop;
  created_at : string prop;
  endpoint : string prop;
  ha : bool prop;
  id : string prop;
  ipv4_address : string prop;
  kube_config : kube_config list prop;
  maintenance_policy : maintenance_policy list prop;
  name : string prop;
  node_pool : node_pool list prop;
  region : string prop;
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
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
