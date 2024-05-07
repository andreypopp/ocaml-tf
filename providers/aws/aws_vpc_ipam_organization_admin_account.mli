(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_ipam_organization_admin_account

val aws_vpc_ipam_organization_admin_account :
  ?id:string prop ->
  delegated_admin_account_id:string prop ->
  unit ->
  aws_vpc_ipam_organization_admin_account

val yojson_of_aws_vpc_ipam_organization_admin_account :
  aws_vpc_ipam_organization_admin_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  delegated_admin_account_id : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  service_principal : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  delegated_admin_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  delegated_admin_account_id:string prop ->
  string ->
  t Tf_core.resource
