(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_dms_certificate

val aws_dms_certificate :
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate_id:string prop ->
  unit ->
  aws_dms_certificate

val yojson_of_aws_dms_certificate : aws_dms_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_arn : string prop;
  certificate_id : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate_id:string prop ->
  string ->
  t
