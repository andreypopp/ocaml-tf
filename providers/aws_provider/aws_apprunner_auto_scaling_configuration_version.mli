(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_auto_scaling_configuration_version

val aws_apprunner_auto_scaling_configuration_version :
  ?id:string ->
  ?max_concurrency:float ->
  ?max_size:float ->
  ?min_size:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  auto_scaling_configuration_name:string ->
  string ->
  unit
