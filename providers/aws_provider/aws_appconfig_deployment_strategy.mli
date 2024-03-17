(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_deployment_strategy

val aws_appconfig_deployment_strategy :
  ?description:string prop ->
  ?final_bake_time_in_minutes:float prop ->
  ?growth_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  deployment_duration_in_minutes:float prop ->
  growth_factor:float prop ->
  name:string prop ->
  replicate_to:string prop ->
  string ->
  unit
