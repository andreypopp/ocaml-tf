(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_parameter

val aws_ssm_parameter :
  ?allowed_pattern:string ->
  ?arn:string ->
  ?data_type:string ->
  ?description:string ->
  ?id:string ->
  ?insecure_value:string ->
  ?key_id:string ->
  ?overwrite:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?tier:string ->
  ?value:string ->
  name:string ->
  type_:string ->
  string ->
  unit
