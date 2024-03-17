(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_subaccount

type t = private {
  billing_account_id : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  id : string prop;
  master_billing_account : string prop;
  name : string prop;
  open_ : bool prop;
}

val google_billing_subaccount :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  master_billing_account:string prop ->
  string ->
  t
