(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_worker_script__analytics_engine_binding
type cloudflare_worker_script__d1_database_binding
type cloudflare_worker_script__kv_namespace_binding
type cloudflare_worker_script__placement
type cloudflare_worker_script__plain_text_binding
type cloudflare_worker_script__queue_binding
type cloudflare_worker_script__r2_bucket_binding
type cloudflare_worker_script__secret_text_binding
type cloudflare_worker_script__service_binding
type cloudflare_worker_script__webassembly_binding
type cloudflare_worker_script

val cloudflare_worker_script :
  ?compatibility_date:string prop ->
  ?compatibility_flags:string prop list ->
  ?id:string prop ->
  ?logpush:bool prop ->
  ?module_:bool prop ->
  account_id:string prop ->
  content:string prop ->
  name:string prop ->
  analytics_engine_binding:
    cloudflare_worker_script__analytics_engine_binding list ->
  d1_database_binding:
    cloudflare_worker_script__d1_database_binding list ->
  kv_namespace_binding:
    cloudflare_worker_script__kv_namespace_binding list ->
  placement:cloudflare_worker_script__placement list ->
  plain_text_binding:
    cloudflare_worker_script__plain_text_binding list ->
  queue_binding:cloudflare_worker_script__queue_binding list ->
  r2_bucket_binding:cloudflare_worker_script__r2_bucket_binding list ->
  secret_text_binding:
    cloudflare_worker_script__secret_text_binding list ->
  service_binding:cloudflare_worker_script__service_binding list ->
  webassembly_binding:
    cloudflare_worker_script__webassembly_binding list ->
  string ->
  unit
