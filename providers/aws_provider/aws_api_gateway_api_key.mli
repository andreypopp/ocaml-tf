(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_api_key

val aws_api_gateway_api_key :
  ?customer_id:string ->
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?value:string ->
  name:string ->
  string ->
  unit
