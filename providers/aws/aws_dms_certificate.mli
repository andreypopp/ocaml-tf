(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dms_certificate

val aws_dms_certificate :
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  certificate_id:string prop ->
  unit ->
  aws_dms_certificate

val yojson_of_aws_dms_certificate : aws_dms_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_arn : string prop;
  certificate_id : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  certificate_id:string prop ->
  string ->
  t

val make :
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  certificate_id:string prop ->
  string ->
  t Tf_core.resource
