(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status__load_balancer__ingress = {
  hostname : string prop;  (** hostname *)
  ip : string prop;  (** ip *)
}

type status__load_balancer = {
  ingress : status__load_balancer__ingress list;
      [@default []] [@yojson_drop_default ( = )]
      (** ingress *)
}

type status = {
  load_balancer : status__load_balancer list;
      [@default []] [@yojson_drop_default ( = )]
      (** load_balancer *)
}

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__port

val spec__port :
  ?app_protocol:string prop ->
  ?name:string prop ->
  ?node_port:float prop ->
  ?protocol:string prop ->
  ?target_port:string prop ->
  port:float prop ->
  unit ->
  spec__port

type spec__session_affinity_config__client_ip

val spec__session_affinity_config__client_ip :
  ?timeout_seconds:float prop ->
  unit ->
  spec__session_affinity_config__client_ip

type spec__session_affinity_config

val spec__session_affinity_config :
  ?client_ip:spec__session_affinity_config__client_ip list ->
  unit ->
  spec__session_affinity_config

type spec

val spec :
  ?allocate_load_balancer_node_ports:bool prop ->
  ?cluster_ip:string prop ->
  ?cluster_ips:string prop list ->
  ?external_ips:string prop list ->
  ?external_name:string prop ->
  ?external_traffic_policy:string prop ->
  ?health_check_node_port:float prop ->
  ?internal_traffic_policy:string prop ->
  ?ip_families:string prop list ->
  ?ip_family_policy:string prop ->
  ?load_balancer_class:string prop ->
  ?load_balancer_ip:string prop ->
  ?load_balancer_source_ranges:string prop list ->
  ?publish_not_ready_addresses:bool prop ->
  ?selector:(string * string prop) list ->
  ?session_affinity:string prop ->
  ?type_:string prop ->
  ?port:spec__port list ->
  ?session_affinity_config:spec__session_affinity_config list ->
  unit ->
  spec

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_service

val kubernetes_service :
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_service

val yojson_of_kubernetes_service : kubernetes_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  status : status list prop;
  wait_for_load_balancer : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
