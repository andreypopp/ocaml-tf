(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_config__dns_records

val dns_config__dns_records :
  ttl:float prop ->
  type_:string prop ->
  unit ->
  dns_config__dns_records

type dns_config

val dns_config :
  ?routing_policy:string prop ->
  namespace_id:string prop ->
  dns_records:dns_config__dns_records list ->
  unit ->
  dns_config

type health_check_config

val health_check_config :
  ?failure_threshold:float prop ->
  ?resource_path:string prop ->
  ?type_:string prop ->
  unit ->
  health_check_config

type health_check_custom_config

val health_check_custom_config :
  ?failure_threshold:float prop -> unit -> health_check_custom_config

type aws_service_discovery_service

val aws_service_discovery_service :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?dns_config:dns_config list ->
  ?health_check_config:health_check_config list ->
  ?health_check_custom_config:health_check_custom_config list ->
  name:string prop ->
  unit ->
  aws_service_discovery_service

val yojson_of_aws_service_discovery_service :
  aws_service_discovery_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?dns_config:dns_config list ->
  ?health_check_config:health_check_config list ->
  ?health_check_custom_config:health_check_custom_config list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?dns_config:dns_config list ->
  ?health_check_config:health_check_config list ->
  ?health_check_custom_config:health_check_custom_config list ->
  name:string prop ->
  string ->
  t Tf_core.resource
