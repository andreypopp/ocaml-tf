(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_logpush_job

val cloudflare_logpush_job :
  ?account_id:string prop ->
  ?enabled:bool prop ->
  ?filter:string prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?logpull_options:string prop ->
  ?max_upload_bytes:float prop ->
  ?max_upload_interval_seconds:float prop ->
  ?max_upload_records:float prop ->
  ?name:string prop ->
  ?ownership_challenge:string prop ->
  ?zone_id:string prop ->
  dataset:string prop ->
  destination_conf:string prop ->
  unit ->
  cloudflare_logpush_job

val yojson_of_cloudflare_logpush_job : cloudflare_logpush_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  dataset : string prop;
  destination_conf : string prop;
  enabled : bool prop;
  filter : string prop;
  frequency : string prop;
  id : string prop;
  kind : string prop;
  logpull_options : string prop;
  max_upload_bytes : float prop;
  max_upload_interval_seconds : float prop;
  max_upload_records : float prop;
  name : string prop;
  ownership_challenge : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?enabled:bool prop ->
  ?filter:string prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?logpull_options:string prop ->
  ?max_upload_bytes:float prop ->
  ?max_upload_interval_seconds:float prop ->
  ?max_upload_records:float prop ->
  ?name:string prop ->
  ?ownership_challenge:string prop ->
  ?zone_id:string prop ->
  dataset:string prop ->
  destination_conf:string prop ->
  string ->
  t
