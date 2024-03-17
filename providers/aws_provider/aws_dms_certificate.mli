(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_certificate

type t = private {
  certificate_arn : string prop;
  certificate_id : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_dms_certificate :
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate_id:string prop ->
  string ->
  t
