(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing

type t = private {
  arn : string prop;
  attributes : (string * string) list prop;
  default_client_id : string prop;
  id : string prop;
  name : string prop;
  thing_type_name : string prop;
  version : float prop;
}

val aws_iot_thing :
  ?attributes:(string * string prop) list ->
  ?id:string prop ->
  ?thing_type_name:string prop ->
  name:string prop ->
  string ->
  t
