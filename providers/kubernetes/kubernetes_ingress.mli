(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type spec__backend

val spec__backend :
  ?service_name:string prop ->
  ?service_port:string prop ->
  unit ->
  spec__backend

type spec__rule__http__path__backend

val spec__rule__http__path__backend :
  ?service_name:string prop ->
  ?service_port:string prop ->
  unit ->
  spec__rule__http__path__backend

type spec__rule__http__path

val spec__rule__http__path :
  ?path:string prop ->
  backend:spec__rule__http__path__backend list ->
  unit ->
  spec__rule__http__path

type spec__rule__http

val spec__rule__http :
  path:spec__rule__http__path list -> unit -> spec__rule__http

type spec__rule

val spec__rule :
  ?host:string prop ->
  http:spec__rule__http list ->
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
  backend:spec__backend list ->
  rule:spec__rule list ->
  tls:spec__tls list ->
  unit ->
  spec

type kubernetes_ingress

val kubernetes_ingress :
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_ingress

val yojson_of_kubernetes_ingress : kubernetes_ingress -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  status : status list prop;
  wait_for_load_balancer : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?wait_for_load_balancer:bool prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t
