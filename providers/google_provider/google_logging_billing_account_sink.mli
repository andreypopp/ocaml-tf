(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_billing_account_sink__bigquery_options
type google_logging_billing_account_sink__exclusions
type google_logging_billing_account_sink

val google_logging_billing_account_sink :
  ?description:string ->
  ?disabled:bool ->
  ?filter:string ->
  billing_account:string ->
  destination:string ->
  name:string ->
  bigquery_options:
    google_logging_billing_account_sink__bigquery_options list ->
  exclusions:google_logging_billing_account_sink__exclusions list ->
  string ->
  unit
