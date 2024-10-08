(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_authentication_profile

val aws_redshift_authentication_profile :
  ?id:string prop ->
  authentication_profile_content:string prop ->
  authentication_profile_name:string prop ->
  unit ->
  aws_redshift_authentication_profile

val yojson_of_aws_redshift_authentication_profile :
  aws_redshift_authentication_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authentication_profile_content : string prop;
  authentication_profile_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  authentication_profile_content:string prop ->
  authentication_profile_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  authentication_profile_content:string prop ->
  authentication_profile_name:string prop ->
  string ->
  t Tf_core.resource
