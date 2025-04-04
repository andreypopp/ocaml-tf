(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__tls = {
  hosts : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hosts *)
  secret_name : string prop;  (** secret_name *)
}

type spec__rule__http__path__backend = {
  service_name : string prop;  (** service_name *)
  service_port : string prop;  (** service_port *)
}

type spec__rule__http__path = {
  backend : spec__rule__http__path__backend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** backend *)
  path : string prop;  (** path *)
}

type spec__rule__http = {
  path : spec__rule__http__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** path *)
}

type spec__rule = {
  host : string prop;  (** host *)
  http : spec__rule__http list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http *)
}

type spec__backend = {
  service_name : string prop;  (** service_name *)
  service_port : string prop;  (** service_port *)
}

type spec = {
  backend : spec__backend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** backend *)
  ingress_class_name : string prop;  (** ingress_class_name *)
  rule : spec__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rule *)
  tls : spec__tls list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tls *)
}

type status__load_balancer__ingress = {
  hostname : string prop;  (** hostname *)
  ip : string prop;  (** ip *)
}

type status__load_balancer = {
  ingress : status__load_balancer__ingress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ingress *)
}

type status = {
  load_balancer : status__load_balancer list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer *)
}

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_ingress

val kubernetes_ingress :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_ingress

val yojson_of_kubernetes_ingress : kubernetes_ingress -> json

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
