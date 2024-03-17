(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_kubernetes_cluster__maintenance_policy
type digitalocean_kubernetes_cluster__node_pool__taint

type digitalocean_kubernetes_cluster__node_pool__nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}

type digitalocean_kubernetes_cluster__node_pool
type digitalocean_kubernetes_cluster__timeouts

type digitalocean_kubernetes_cluster__kube_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  expires_at : string prop;  (** expires_at *)
  host : string prop;  (** host *)
  raw_config : string prop;  (** raw_config *)
  token : string prop;  (** token *)
}

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
  ?timeouts:digitalocean_kubernetes_cluster__timeouts ->
  name:string prop ->
  region:string prop ->
  version:string prop ->
  maintenance_policy:
    digitalocean_kubernetes_cluster__maintenance_policy list ->
  node_pool:digitalocean_kubernetes_cluster__node_pool list ->
  string ->
  unit
