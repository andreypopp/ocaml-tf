(** Provides a resource which manages Cloudflare Logpush jobs. For
Logpush jobs pushing to Amazon S3, Google Cloud Storage, Microsoft
Azure or Sumo Logic, this resource cannot be automatically created.
In order to have this automated, you must have:

- `cloudflare_logpush_ownership_challenge`: Configured to generate the challenge
to confirm ownership of the destination.
- Either manual inspection or another Terraform Provider to get the contents of
the `ownership_challenge_filename` value from the`cloudflare_logpush_ownership_challenge` resource.
- `cloudflare_logpush_job`: Create and manage the Logpush Job itself.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type output_options

val output_options :
  ?batch_prefix:string prop ->
  ?batch_suffix:string prop ->
  ?cve20214428:bool prop ->
  ?field_delimiter:string prop ->
  ?field_names:string prop list ->
  ?output_type:string prop ->
  ?record_delimiter:string prop ->
  ?record_prefix:string prop ->
  ?record_suffix:string prop ->
  ?record_template:string prop ->
  ?sample_rate:float prop ->
  ?timestamp_format:string prop ->
  unit ->
  output_options

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
  ?output_options:output_options list ->
  dataset:string prop ->
  destination_conf:string prop ->
  unit ->
  cloudflare_logpush_job

val yojson_of_cloudflare_logpush_job : cloudflare_logpush_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  ?output_options:output_options list ->
  dataset:string prop ->
  destination_conf:string prop ->
  string ->
  t

val make :
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
  ?output_options:output_options list ->
  dataset:string prop ->
  destination_conf:string prop ->
  string ->
  t Tf_core.resource
