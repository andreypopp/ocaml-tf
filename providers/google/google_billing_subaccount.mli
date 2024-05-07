(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_billing_subaccount

val google_billing_subaccount :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  master_billing_account:string prop ->
  unit ->
  google_billing_subaccount

val yojson_of_google_billing_subaccount :
  google_billing_subaccount -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  billing_account_id : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  id : string prop;
  master_billing_account : string prop;
  name : string prop;
  open_ : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  master_billing_account:string prop ->
  string ->
  t

val make :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  master_billing_account:string prop ->
  string ->
  t Tf_core.resource
