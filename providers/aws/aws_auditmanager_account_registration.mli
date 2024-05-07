(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_auditmanager_account_registration

val aws_auditmanager_account_registration :
  ?delegated_admin_account:string prop ->
  ?deregister_on_destroy:bool prop ->
  ?kms_key:string prop ->
  unit ->
  aws_auditmanager_account_registration

val yojson_of_aws_auditmanager_account_registration :
  aws_auditmanager_account_registration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delegated_admin_account : string prop;
  deregister_on_destroy : bool prop;
  id : string prop;
  kms_key : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delegated_admin_account:string prop ->
  ?deregister_on_destroy:bool prop ->
  ?kms_key:string prop ->
  string ->
  t

val make :
  ?delegated_admin_account:string prop ->
  ?deregister_on_destroy:bool prop ->
  ?kms_key:string prop ->
  string ->
  t Tf_core.resource
