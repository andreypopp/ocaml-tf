(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_service_specific_credential

val aws_iam_service_specific_credential :
  ?id:string prop ->
  ?status:string prop ->
  service_name:string prop ->
  user_name:string prop ->
  unit ->
  aws_iam_service_specific_credential

val yojson_of_aws_iam_service_specific_credential :
  aws_iam_service_specific_credential -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  service_name : string prop;
  service_password : string prop;
  service_specific_credential_id : string prop;
  service_user_name : string prop;
  status : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  service_name:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  service_name:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
