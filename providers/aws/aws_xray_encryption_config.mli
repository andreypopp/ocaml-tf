(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_xray_encryption_config

type t = private {
  id : string prop;
  key_id : string prop;
  type_ : string prop;
}

val aws_xray_encryption_config :
  ?id:string prop ->
  ?key_id:string prop ->
  type_:string prop ->
  string ->
  t
