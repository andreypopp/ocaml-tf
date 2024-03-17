(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_deployment

val aws_api_gateway_deployment :
  ?description:string ->
  ?stage_description:string ->
  ?stage_name:string ->
  ?triggers:(string * string) list ->
  ?variables:(string * string) list ->
  rest_api_id:string ->
  string ->
  unit
