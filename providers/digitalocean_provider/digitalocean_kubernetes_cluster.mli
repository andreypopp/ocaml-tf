(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_kubernetes_cluster__maintenance_policy
type digitalocean_kubernetes_cluster__node_pool__taint

type digitalocean_kubernetes_cluster__node_pool__nodes = {
  created_at : string;  (** created_at *)
  droplet_id : string;  (** droplet_id *)
  id : string;  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
  updated_at : string;  (** updated_at *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_cluster__node_pool
type digitalocean_kubernetes_cluster__timeouts

type digitalocean_kubernetes_cluster__kube_config = {
  client_certificate : string;  (** client_certificate *)
  client_key : string;  (** client_key *)
  cluster_ca_certificate : string;  (** cluster_ca_certificate *)
  expires_at : string;  (** expires_at *)
  host : string;  (** host *)
  raw_config : string;  (** raw_config *)
  token : string;  (** token *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_cluster

val digitalocean_kubernetes_cluster :
  ?auto_upgrade:bool ->
  ?destroy_all_associated_resources:bool ->
  ?ha:bool ->
  ?registry_integration:bool ->
  ?surge_upgrade:bool ->
  ?tags:string list ->
  ?timeouts:digitalocean_kubernetes_cluster__timeouts ->
  name:string ->
  region:string ->
  version:string ->
  maintenance_policy:
    digitalocean_kubernetes_cluster__maintenance_policy list ->
  node_pool:digitalocean_kubernetes_cluster__node_pool list ->
  string ->
  unit
