(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}

type taint

val taint :
  effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  taint

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type digitalocean_kubernetes_node_pool

val digitalocean_kubernetes_node_pool :
  ?auto_scale:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_nodes:float prop ->
  ?min_nodes:float prop ->
  ?node_count:float prop ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  size:string prop ->
  taint:taint list ->
  unit ->
  digitalocean_kubernetes_node_pool

val yojson_of_digitalocean_kubernetes_node_pool :
  digitalocean_kubernetes_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  actual_node_count : float prop;
  auto_scale : bool prop;
  cluster_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  max_nodes : float prop;
  min_nodes : float prop;
  name : string prop;
  node_count : float prop;
  nodes : nodes list prop;
  size : string prop;
  tags : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_scale:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_nodes:float prop ->
  ?min_nodes:float prop ->
  ?node_count:float prop ->
  ?tags:string prop list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  size:string prop ->
  taint:taint list ->
  string ->
  t
