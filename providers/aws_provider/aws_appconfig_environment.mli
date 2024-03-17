(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_environment__monitor
type aws_appconfig_environment

val aws_appconfig_environment :
  ?description:string ->
  ?tags:(string * string) list ->
  application_id:string ->
  name:string ->
  monitor:aws_appconfig_environment__monitor list ->
  string ->
  unit
