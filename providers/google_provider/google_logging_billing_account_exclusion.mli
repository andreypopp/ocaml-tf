(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_billing_account_exclusion

type t = private {
  billing_account : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
}

val google_logging_billing_account_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  billing_account:string prop ->
  filter:string prop ->
  name:string prop ->
  string ->
  t
