(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_kubernetes_node_pool__taint
type digitalocean_kubernetes_node_pool__timeouts

type digitalocean_kubernetes_node_pool__nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}

type digitalocean_kubernetes_node_pool

val digitalocean_kubernetes_node_pool :
  ?auto_scale:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_nodes:float prop ->
  ?min_nodes:float prop ->
  ?node_count:float prop ->
  ?tags:string prop list ->
  ?timeouts:digitalocean_kubernetes_node_pool__timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  size:string prop ->
  taint:digitalocean_kubernetes_node_pool__taint list ->
  string ->
  unit
