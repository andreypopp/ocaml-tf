(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type analytics_engine_binding

val analytics_engine_binding :
  dataset:string prop ->
  name:string prop ->
  unit ->
  analytics_engine_binding

type d1_database_binding

val d1_database_binding :
  database_id:string prop ->
  name:string prop ->
  unit ->
  d1_database_binding

type kv_namespace_binding

val kv_namespace_binding :
  name:string prop ->
  namespace_id:string prop ->
  unit ->
  kv_namespace_binding

type placement

val placement : mode:string prop -> unit -> placement

type plain_text_binding

val plain_text_binding :
  name:string prop -> text:string prop -> unit -> plain_text_binding

type queue_binding

val queue_binding :
  binding:string prop -> queue:string prop -> unit -> queue_binding

type r2_bucket_binding

val r2_bucket_binding :
  bucket_name:string prop ->
  name:string prop ->
  unit ->
  r2_bucket_binding

type secret_text_binding

val secret_text_binding :
  name:string prop -> text:string prop -> unit -> secret_text_binding

type service_binding

val service_binding :
  ?environment:string prop ->
  name:string prop ->
  service:string prop ->
  unit ->
  service_binding

type webassembly_binding

val webassembly_binding :
  module_:string prop ->
  name:string prop ->
  unit ->
  webassembly_binding

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
  analytics_engine_binding:analytics_engine_binding list ->
  d1_database_binding:d1_database_binding list ->
  kv_namespace_binding:kv_namespace_binding list ->
  placement:placement list ->
  plain_text_binding:plain_text_binding list ->
  queue_binding:queue_binding list ->
  r2_bucket_binding:r2_bucket_binding list ->
  secret_text_binding:secret_text_binding list ->
  service_binding:service_binding list ->
  webassembly_binding:webassembly_binding list ->
  unit ->
  cloudflare_worker_script

val yojson_of_cloudflare_worker_script :
  cloudflare_worker_script -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  compatibility_date : string prop;
  compatibility_flags : string list prop;
  content : string prop;
  id : string prop;
  logpush : bool prop;
  module_ : bool prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compatibility_date:string prop ->
  ?compatibility_flags:string prop list ->
  ?id:string prop ->
  ?logpush:bool prop ->
  ?module_:bool prop ->
  account_id:string prop ->
  content:string prop ->
  name:string prop ->
  analytics_engine_binding:analytics_engine_binding list ->
  d1_database_binding:d1_database_binding list ->
  kv_namespace_binding:kv_namespace_binding list ->
  placement:placement list ->
  plain_text_binding:plain_text_binding list ->
  queue_binding:queue_binding list ->
  r2_bucket_binding:r2_bucket_binding list ->
  secret_text_binding:secret_text_binding list ->
  service_binding:service_binding list ->
  webassembly_binding:webassembly_binding list ->
  string ->
  t

val make :
  ?compatibility_date:string prop ->
  ?compatibility_flags:string prop list ->
  ?id:string prop ->
  ?logpush:bool prop ->
  ?module_:bool prop ->
  account_id:string prop ->
  content:string prop ->
  name:string prop ->
  analytics_engine_binding:analytics_engine_binding list ->
  d1_database_binding:d1_database_binding list ->
  kv_namespace_binding:kv_namespace_binding list ->
  placement:placement list ->
  plain_text_binding:plain_text_binding list ->
  queue_binding:queue_binding list ->
  r2_bucket_binding:r2_bucket_binding list ->
  secret_text_binding:secret_text_binding list ->
  service_binding:service_binding list ->
  webassembly_binding:webassembly_binding list ->
  string ->
  t Tf_core.resource
