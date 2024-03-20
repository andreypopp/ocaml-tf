(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_auditmanager_organization_admin_account_registration

val aws_auditmanager_organization_admin_account_registration :
  admin_account_id:string prop ->
  unit ->
  aws_auditmanager_organization_admin_account_registration

val yojson_of_aws_auditmanager_organization_admin_account_registration :
  aws_auditmanager_organization_admin_account_registration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_account_id : string prop;
  id : string prop;
  organization_id : string prop;
}

val register :
  ?tf_module:tf_module -> admin_account_id:string prop -> string -> t

val make :
  admin_account_id:string prop -> string -> t Tf_core.resource
