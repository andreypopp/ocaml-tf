(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_logpush_job

val cloudflare_logpush_job :
  ?account_id:string ->
  ?enabled:bool ->
  ?filter:string ->
  ?frequency:string ->
  ?id:string ->
  ?kind:string ->
  ?logpull_options:string ->
  ?max_upload_bytes:float ->
  ?max_upload_interval_seconds:float ->
  ?max_upload_records:float ->
  ?name:string ->
  ?ownership_challenge:string ->
  ?zone_id:string ->
  dataset:string ->
  destination_conf:string ->
  string ->
  unit
