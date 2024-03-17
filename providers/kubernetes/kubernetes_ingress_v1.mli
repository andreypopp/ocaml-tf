(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_ingress_v1__metadata
type kubernetes_ingress_v1__spec__default_backend__resource
type kubernetes_ingress_v1__spec__default_backend__service__port
type kubernetes_ingress_v1__spec__default_backend__service
type kubernetes_ingress_v1__spec__default_backend
type kubernetes_ingress_v1__spec__rule__http__path__backend__resource

type kubernetes_ingress_v1__spec__rule__http__path__backend__service__port

type kubernetes_ingress_v1__spec__rule__http__path__backend__service
type kubernetes_ingress_v1__spec__rule__http__path__backend
type kubernetes_ingress_v1__spec__rule__http__path
type kubernetes_ingress_v1__spec__rule__http
type kubernetes_ingress_v1__spec__rule
type kubernetes_ingress_v1__spec__tls
type kubernetes_ingress_v1__spec
type kubernetes_ingress_v1__timeouts

type kubernetes_ingress_v1__status__load_balancer__ingress = {
  hostname : string prop;  (** hostname *)
  ip : string prop;  (** ip *)
}

type kubernetes_ingress_v1__status__load_balancer = {
  ingress :
    kubernetes_ingress_v1__status__load_balancer__ingress list;
      (** ingress *)
}

type kubernetes_ingress_v1__status = {
  load_balancer : kubernetes_ingress_v1__status__load_balancer list;
      (** load_balancer *)
}

type kubernetes_ingress_v1

type t = private {
  id : string prop;
  status : kubernetes_ingress_v1__status list prop;
  wait_for_load_balancer : bool prop;
}

val kubernetes_ingress_v1 :
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  ?timeouts:kubernetes_ingress_v1__timeouts ->
  metadata:kubernetes_ingress_v1__metadata list ->
  spec:kubernetes_ingress_v1__spec list ->
  string ->
  t
