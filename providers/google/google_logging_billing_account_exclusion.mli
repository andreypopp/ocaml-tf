(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_logging_billing_account_exclusion

val google_logging_billing_account_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  billing_account:string prop ->
  filter:string prop ->
  name:string prop ->
  unit ->
  google_logging_billing_account_exclusion

val yojson_of_google_logging_billing_account_exclusion :
  google_logging_billing_account_exclusion -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  billing_account : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  billing_account:string prop ->
  filter:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  billing_account:string prop ->
  filter:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
