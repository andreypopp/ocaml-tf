(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_licensemanager_grant_accepter

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

val aws_licensemanager_grant_accepter :
  ?id:string prop -> grant_arn:string prop -> string -> t
