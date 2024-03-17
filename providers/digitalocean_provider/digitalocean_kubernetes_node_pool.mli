(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_kubernetes_node_pool__taint
type digitalocean_kubernetes_node_pool__timeouts

type digitalocean_kubernetes_node_pool__nodes = {
  created_at : string;  (** created_at *)
  droplet_id : string;  (** droplet_id *)
  id : string;  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
  updated_at : string;  (** updated_at *)
}

type digitalocean_kubernetes_node_pool

val digitalocean_kubernetes_node_pool :
  ?auto_scale:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?max_nodes:float ->
  ?min_nodes:float ->
  ?node_count:float ->
  ?tags:string list ->
  ?timeouts:digitalocean_kubernetes_node_pool__timeouts ->
  cluster_id:string ->
  name:string ->
  size:string ->
  taint:digitalocean_kubernetes_node_pool__taint list ->
  string ->
  unit
