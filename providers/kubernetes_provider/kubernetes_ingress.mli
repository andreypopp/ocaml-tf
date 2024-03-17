(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_ingress__metadata
type kubernetes_ingress__spec__backend
type kubernetes_ingress__spec__rule__http__path__backend
type kubernetes_ingress__spec__rule__http__path
type kubernetes_ingress__spec__rule__http
type kubernetes_ingress__spec__rule
type kubernetes_ingress__spec__tls
type kubernetes_ingress__spec

type kubernetes_ingress__status__load_balancer__ingress = {
  hostname : string;  (** hostname *)
  ip : string;  (** ip *)
}

type kubernetes_ingress__status__load_balancer = {
  ingress : kubernetes_ingress__status__load_balancer__ingress list;
      (** ingress *)
}

type kubernetes_ingress__status = {
  load_balancer : kubernetes_ingress__status__load_balancer list;
      (** load_balancer *)
}

type kubernetes_ingress

val kubernetes_ingress :
  ?id:string ->
  ?wait_for_load_balancer:bool ->
  metadata:kubernetes_ingress__metadata list ->
  spec:kubernetes_ingress__spec list ->
  string ->
  unit
