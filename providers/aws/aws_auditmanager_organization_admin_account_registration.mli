(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_organization_admin_account_registration

type t = private {
  admin_account_id : string prop;
  id : string prop;
  organization_id : string prop;
}

val aws_auditmanager_organization_admin_account_registration :
  admin_account_id:string prop -> string -> t
