(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_environment__monitor
type aws_appconfig_environment

val aws_appconfig_environment :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  name:string prop ->
  monitor:aws_appconfig_environment__monitor list ->
  string ->
  unit
