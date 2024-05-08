(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_config__dns_records = {
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}

type dns_config = {
  dns_records : dns_config__dns_records list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dns_records *)
  namespace_id : string prop;  (** namespace_id *)
  routing_policy : string prop;  (** routing_policy *)
}

type health_check_config = {
  failure_threshold : float prop;  (** failure_threshold *)
  resource_path : string prop;  (** resource_path *)
  type_ : string prop; [@key "type"]  (** type *)
}

type health_check_custom_config = {
  failure_threshold : float prop;  (** failure_threshold *)
}

type aws_service_discovery_service

val aws_service_discovery_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  namespace_id:string prop ->
  unit ->
  aws_service_discovery_service

val yojson_of_aws_service_discovery_service :
  aws_service_discovery_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  dns_config : dns_config list prop;
  health_check_config : health_check_config list prop;
  health_check_custom_config : health_check_custom_config list prop;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t Tf_core.resource
