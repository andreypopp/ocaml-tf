(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_access_key

val aws_iam_access_key :
  ?id:string prop ->
  ?pgp_key:string prop ->
  ?status:string prop ->
  user:string prop ->
  unit ->
  aws_iam_access_key

val yojson_of_aws_iam_access_key : aws_iam_access_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_date : string prop;
  encrypted_secret : string prop;
  encrypted_ses_smtp_password_v4 : string prop;
  id : string prop;
  key_fingerprint : string prop;
  pgp_key : string prop;
  secret : string prop;
  ses_smtp_password_v4 : string prop;
  status : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?pgp_key:string prop ->
  ?status:string prop ->
  user:string prop ->
  string ->
  t
