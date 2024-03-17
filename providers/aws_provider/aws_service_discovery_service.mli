(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_service_discovery_service__dns_config__dns_records
type aws_service_discovery_service__dns_config
type aws_service_discovery_service__health_check_config
type aws_service_discovery_service__health_check_custom_config
type aws_service_discovery_service

val aws_service_discovery_service :
  ?description:string ->
  ?force_destroy:bool ->
  ?id:string ->
  ?namespace_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  name:string ->
  dns_config:aws_service_discovery_service__dns_config list ->
  health_check_config:
    aws_service_discovery_service__health_check_config list ->
  health_check_custom_config:
    aws_service_discovery_service__health_check_custom_config list ->
  string ->
  unit
