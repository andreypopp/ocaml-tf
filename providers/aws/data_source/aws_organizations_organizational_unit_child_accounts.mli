(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}

type aws_organizations_organizational_unit_child_accounts

val aws_organizations_organizational_unit_child_accounts :
  ?id:string prop ->
  parent_id:string prop ->
  unit ->
  aws_organizations_organizational_unit_child_accounts

val yojson_of_aws_organizations_organizational_unit_child_accounts :
  aws_organizations_organizational_unit_child_accounts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accounts : accounts list prop;
  id : string prop;
  parent_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent_id:string prop ->
  string ->
  t Tf_core.resource
