(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_licensemanager_grant_accepter

val aws_licensemanager_grant_accepter :
  ?id:string prop ->
  grant_arn:string prop ->
  unit ->
  aws_licensemanager_grant_accepter

val yojson_of_aws_licensemanager_grant_accepter :
  aws_licensemanager_grant_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allowed_operations : string list prop;
  grant_arn : string prop;
  home_region : string prop;
  id : string prop;
  license_arn : string prop;
  name : string prop;
  parent_arn : string prop;
  principal : string prop;
  status : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  grant_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  grant_arn:string prop ->
  string ->
  t Tf_core.resource
