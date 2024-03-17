(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_api_key

val aws_api_gateway_api_key :
  ?customer_id:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?value:string prop ->
  name:string prop ->
  string ->
  unit
