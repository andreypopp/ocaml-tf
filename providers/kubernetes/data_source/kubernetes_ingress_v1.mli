(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type spec__tls = {
  hosts : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hosts *)
  secret_name : string prop;  (** secret_name *)
}

type spec__rule__http__path__backend__service__port = {
  name : string prop;  (** name *)
  number : float prop;  (** number *)
}

type spec__rule__http__path__backend__service = {
  name : string prop;  (** name *)
  port : spec__rule__http__path__backend__service__port list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port *)
}

type spec__rule__http__path__backend__resource = {
  api_group : string prop;  (** api_group *)
  kind : string prop;  (** kind *)
  name : string prop;  (** name *)
}

type spec__rule__http__path__backend = {
  resource : spec__rule__http__path__backend__resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** resource *)
  service : spec__rule__http__path__backend__service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** service *)
}

type spec__rule__http__path = {
  backend : spec__rule__http__path__backend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** backend *)
  path : string prop;  (** path *)
  path_type : string prop;  (** path_type *)
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

type spec__default_backend__service__port = {
  name : string prop;  (** name *)
  number : float prop;  (** number *)
}

type spec__default_backend__service = {
  name : string prop;  (** name *)
  port : spec__default_backend__service__port list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port *)
}

type spec__default_backend__resource = {
  api_group : string prop;  (** api_group *)
  kind : string prop;  (** kind *)
  name : string prop;  (** name *)
}

type spec__default_backend = {
  resource : spec__default_backend__resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** resource *)
  service : spec__default_backend__service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** service *)
}

type spec = {
  default_backend : spec__default_backend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** default_backend *)
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

type kubernetes_ingress_v1

val kubernetes_ingress_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_ingress_v1

val yojson_of_kubernetes_ingress_v1 : kubernetes_ingress_v1 -> json

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
