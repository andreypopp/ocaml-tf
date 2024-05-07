(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status__load_balancer__ingress = {
  hostname : string prop;  (** hostname *)
  ip : string prop;  (** ip *)
}

type status__load_balancer = {
  ingress : status__load_balancer__ingress list;  (** ingress *)
}

type status = {
  load_balancer : status__load_balancer list;  (** load_balancer *)
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

type spec__default_backend__resource

val spec__default_backend__resource :
  api_group:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  spec__default_backend__resource

type spec__default_backend__service__port

val spec__default_backend__service__port :
  ?name:string prop ->
  ?number:float prop ->
  unit ->
  spec__default_backend__service__port

type spec__default_backend__service

val spec__default_backend__service :
  name:string prop ->
  port:spec__default_backend__service__port list ->
  unit ->
  spec__default_backend__service

type spec__default_backend

val spec__default_backend :
  ?resource:spec__default_backend__resource list ->
  ?service:spec__default_backend__service list ->
  unit ->
  spec__default_backend

type spec__rule__http__path__backend__resource

val spec__rule__http__path__backend__resource :
  api_group:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  spec__rule__http__path__backend__resource

type spec__rule__http__path__backend__service__port

val spec__rule__http__path__backend__service__port :
  ?name:string prop ->
  ?number:float prop ->
  unit ->
  spec__rule__http__path__backend__service__port

type spec__rule__http__path__backend__service

val spec__rule__http__path__backend__service :
  name:string prop ->
  port:spec__rule__http__path__backend__service__port list ->
  unit ->
  spec__rule__http__path__backend__service

type spec__rule__http__path__backend

val spec__rule__http__path__backend :
  ?resource:spec__rule__http__path__backend__resource list ->
  ?service:spec__rule__http__path__backend__service list ->
  unit ->
  spec__rule__http__path__backend

type spec__rule__http__path

val spec__rule__http__path :
  ?path:string prop ->
  ?path_type:string prop ->
  ?backend:spec__rule__http__path__backend list ->
  unit ->
  spec__rule__http__path

type spec__rule__http

val spec__rule__http :
  path:spec__rule__http__path list -> unit -> spec__rule__http

type spec__rule

val spec__rule :
  ?host:string prop ->
  ?http:spec__rule__http list ->
  unit ->
  spec__rule

type spec__tls

val spec__tls :
  ?hosts:string prop list ->
  ?secret_name:string prop ->
  unit ->
  spec__tls

type spec

val spec :
  ?ingress_class_name:string prop ->
  ?default_backend:spec__default_backend list ->
  ?rule:spec__rule list ->
  ?tls:spec__tls list ->
  unit ->
  spec

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type kubernetes_ingress_v1

val kubernetes_ingress_v1 :
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_ingress_v1

val yojson_of_kubernetes_ingress_v1 : kubernetes_ingress_v1 -> json

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
