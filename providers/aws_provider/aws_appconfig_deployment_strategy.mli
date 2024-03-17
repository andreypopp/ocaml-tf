(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_deployment_strategy

val aws_appconfig_deployment_strategy :
  ?description:string ->
  ?final_bake_time_in_minutes:float ->
  ?growth_type:string ->
  ?tags:(string * string) list ->
  deployment_duration_in_minutes:float ->
  growth_factor:float ->
  name:string ->
  replicate_to:string ->
  string ->
  unit
