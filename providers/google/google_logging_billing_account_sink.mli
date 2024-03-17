(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_billing_account_sink__bigquery_options
type google_logging_billing_account_sink__exclusions
type google_logging_billing_account_sink

type t = private {
  billing_account : string prop;
  description : string prop;
  destination : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  writer_identity : string prop;
}

val google_logging_billing_account_sink :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  billing_account:string prop ->
  destination:string prop ->
  name:string prop ->
  bigquery_options:
    google_logging_billing_account_sink__bigquery_options list ->
  exclusions:google_logging_billing_account_sink__exclusions list ->
  string ->
  t
