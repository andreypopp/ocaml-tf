(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_macsec_key_association

type t = private {
  cak : string prop;
  ckn : string prop;
  connection_id : string prop;
  id : string prop;
  secret_arn : string prop;
  start_on : string prop;
  state : string prop;
}

val aws_dx_macsec_key_association :
  ?cak:string prop ->
  ?ckn:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  connection_id:string prop ->
  string ->
  t
