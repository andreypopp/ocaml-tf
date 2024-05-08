(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__session_affinity_config__client_ip = {
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type spec__session_affinity_config = {
  client_ip : spec__session_affinity_config__client_ip list;
      [@default []] [@yojson_drop_default ( = )]
      (** client_ip *)
}

type spec__port = {
  app_protocol : string prop;  (** app_protocol *)
  name : string prop;  (** name *)
  node_port : float prop;  (** node_port *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  target_port : string prop;  (** target_port *)
}

type spec = {
  allocate_load_balancer_node_ports : bool prop;
      (** allocate_load_balancer_node_ports *)
  cluster_ip : string prop;  (** cluster_ip *)
  cluster_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** cluster_ips *)
  external_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** external_ips *)
  external_name : string prop;  (** external_name *)
  external_traffic_policy : string prop;
      (** external_traffic_policy *)
  health_check_node_port : float prop;  (** health_check_node_port *)
  internal_traffic_policy : string prop;
      (** internal_traffic_policy *)
  ip_families : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_families *)
  ip_family_policy : string prop;  (** ip_family_policy *)
  load_balancer_class : string prop;  (** load_balancer_class *)
  load_balancer_ip : string prop;  (** load_balancer_ip *)
  load_balancer_source_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** load_balancer_source_ranges *)
  port : spec__port list; [@default []] [@yojson_drop_default ( = )]
      (** port *)
  publish_not_ready_addresses : bool prop;
      (** publish_not_ready_addresses *)
  selector : (string * string prop) list;  (** selector *)
  session_affinity : string prop;  (** session_affinity *)
  session_affinity_config : spec__session_affinity_config list;
      [@default []] [@yojson_drop_default ( = )]
      (** session_affinity_config *)
  type_ : string prop; [@key "type"]  (** type *)
}

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
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_service

val kubernetes_service :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_service

val yojson_of_kubernetes_service : kubernetes_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  spec : spec list prop;
  status : status list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
