(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_licensemanager_grant

type t = private {
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

val aws_licensemanager_grant :
  ?id:string prop ->
  allowed_operations:string prop list ->
  license_arn:string prop ->
  name:string prop ->
  principal:string prop ->
  string ->
  t
