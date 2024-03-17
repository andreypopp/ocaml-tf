(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_service_specific_credential

type t = private {
  id : string prop;
  service_name : string prop;
  service_password : string prop;
  service_specific_credential_id : string prop;
  service_user_name : string prop;
  status : string prop;
  user_name : string prop;
}

val aws_iam_service_specific_credential :
  ?id:string prop ->
  ?status:string prop ->
  service_name:string prop ->
  user_name:string prop ->
  string ->
  t
