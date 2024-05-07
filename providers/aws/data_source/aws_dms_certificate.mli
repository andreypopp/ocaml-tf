(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dms_certificate

val aws_dms_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  certificate_id:string prop ->
  unit ->
  aws_dms_certificate

val yojson_of_aws_dms_certificate : aws_dms_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_arn : string prop;
  certificate_creation_date : string prop;
  certificate_id : string prop;
  certificate_owner : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  key_length : float prop;
  signing_algorithm : string prop;
  tags : (string * string) list prop;
  valid_from_date : string prop;
  valid_to_date : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  certificate_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  certificate_id:string prop ->
  string ->
  t Tf_core.resource
