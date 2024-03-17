(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_registry_scanning_configuration__rule__repository_filter
type aws_ecr_registry_scanning_configuration__rule
type aws_ecr_registry_scanning_configuration

val aws_ecr_registry_scanning_configuration :
  scan_type:string ->
  rule:aws_ecr_registry_scanning_configuration__rule list ->
  string ->
  unit
