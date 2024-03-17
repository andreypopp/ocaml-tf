(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_deployment

val aws_api_gateway_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?stage_description:string prop ->
  ?stage_name:string prop ->
  ?triggers:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  rest_api_id:string prop ->
  string ->
  unit
