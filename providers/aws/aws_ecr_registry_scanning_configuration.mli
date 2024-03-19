(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rule__repository_filter

val rule__repository_filter :
  filter:string prop ->
  filter_type:string prop ->
  unit ->
  rule__repository_filter

type rule

val rule :
  scan_frequency:string prop ->
  repository_filter:rule__repository_filter list ->
  unit ->
  rule

type aws_ecr_registry_scanning_configuration

val aws_ecr_registry_scanning_configuration :
  ?id:string prop ->
  scan_type:string prop ->
  rule:rule list ->
  unit ->
  aws_ecr_registry_scanning_configuration

val yojson_of_aws_ecr_registry_scanning_configuration :
  aws_ecr_registry_scanning_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  registry_id : string prop;
  scan_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  scan_type:string prop ->
  rule:rule list ->
  string ->
  t
