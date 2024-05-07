(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_licensemanager_grant

val aws_licensemanager_grant :
  ?id:string prop ->
  allowed_operations:string prop list ->
  license_arn:string prop ->
  name:string prop ->
  principal:string prop ->
  unit ->
  aws_licensemanager_grant

val yojson_of_aws_licensemanager_grant :
  aws_licensemanager_grant -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_operations : string list prop;
  arn : string prop;
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
  allowed_operations:string prop list ->
  license_arn:string prop ->
  name:string prop ->
  principal:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  allowed_operations:string prop list ->
  license_arn:string prop ->
  name:string prop ->
  principal:string prop ->
  string ->
  t Tf_core.resource
