(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_account_registration

type t = private {
  delegated_admin_account : string prop;
  deregister_on_destroy : bool prop;
  id : string prop;
  kms_key : string prop;
  status : string prop;
}

val aws_auditmanager_account_registration :
  ?delegated_admin_account:string prop ->
  ?deregister_on_destroy:bool prop ->
  ?kms_key:string prop ->
  string ->
  t
