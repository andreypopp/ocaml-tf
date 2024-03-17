(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_service_discovery_service__dns_config__dns_records
type aws_service_discovery_service__dns_config
type aws_service_discovery_service__health_check_config
type aws_service_discovery_service__health_check_custom_config
type aws_service_discovery_service

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

val aws_service_discovery_service :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?namespace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  name:string prop ->
  dns_config:aws_service_discovery_service__dns_config list ->
  health_check_config:
    aws_service_discovery_service__health_check_config list ->
  health_check_custom_config:
    aws_service_discovery_service__health_check_custom_config list ->
  string ->
  t
