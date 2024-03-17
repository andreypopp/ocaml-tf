(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_auto_scaling_configuration_version

val aws_apprunner_auto_scaling_configuration_version :
  ?id:string prop ->
  ?max_concurrency:float prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  auto_scaling_configuration_name:string prop ->
  string ->
  unit
