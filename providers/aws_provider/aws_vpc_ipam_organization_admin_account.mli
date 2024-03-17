(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_organization_admin_account

type t = private {
  arn : string prop;
  delegated_admin_account_id : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  service_principal : string prop;
}

val aws_vpc_ipam_organization_admin_account :
  ?id:string prop ->
  delegated_admin_account_id:string prop ->
  string ->
  t
