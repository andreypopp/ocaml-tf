(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_registry_scanning_configuration__rule__repository_filter
type aws_ecr_registry_scanning_configuration__rule
type aws_ecr_registry_scanning_configuration

type t = private {
  id : string prop;
  registry_id : string prop;
  scan_type : string prop;
}

val aws_ecr_registry_scanning_configuration :
  ?id:string prop ->
  scan_type:string prop ->
  rule:aws_ecr_registry_scanning_configuration__rule list ->
  string ->
  t
