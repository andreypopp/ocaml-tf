(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_service_v1__metadata
type kubernetes_service_v1__spec__port
type kubernetes_service_v1__spec__session_affinity_config__client_ip
type kubernetes_service_v1__spec__session_affinity_config
type kubernetes_service_v1__spec
type kubernetes_service_v1__timeouts

type kubernetes_service_v1__status__load_balancer__ingress = {
  hostname : string;  (** hostname *)
  ip : string;  (** ip *)
}
[@@deriving yojson_of]

type kubernetes_service_v1__status__load_balancer = {
  ingress :
    kubernetes_service_v1__status__load_balancer__ingress list;
      (** ingress *)
}
[@@deriving yojson_of]

type kubernetes_service_v1__status = {
  load_balancer : kubernetes_service_v1__status__load_balancer list;
      (** load_balancer *)
}
[@@deriving yojson_of]

type kubernetes_service_v1

val kubernetes_service_v1 :
  ?wait_for_load_balancer:bool ->
  ?timeouts:kubernetes_service_v1__timeouts ->
  metadata:kubernetes_service_v1__metadata list ->
  spec:kubernetes_service_v1__spec list ->
  string ->
  unit
