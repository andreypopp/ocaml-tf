(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_service__metadata
type kubernetes_service__spec__port
type kubernetes_service__spec__session_affinity_config__client_ip
type kubernetes_service__spec__session_affinity_config
type kubernetes_service__spec
type kubernetes_service__timeouts

type kubernetes_service__status__load_balancer__ingress = {
  hostname : string;  (** hostname *)
  ip : string;  (** ip *)
}

type kubernetes_service__status__load_balancer = {
  ingress : kubernetes_service__status__load_balancer__ingress list;
      (** ingress *)
}

type kubernetes_service__status = {
  load_balancer : kubernetes_service__status__load_balancer list;
      (** load_balancer *)
}

type kubernetes_service

val kubernetes_service :
  ?id:string ->
  ?wait_for_load_balancer:bool ->
  ?timeouts:kubernetes_service__timeouts ->
  metadata:kubernetes_service__metadata list ->
  spec:kubernetes_service__spec list ->
  string ->
  unit
