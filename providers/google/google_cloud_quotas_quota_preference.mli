(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type quota_config

val quota_config :
  ?annotations:(string * string prop) list ->
  preferred_value:string prop ->
  unit ->
  quota_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_quotas_quota_preference

val google_cloud_quotas_quota_preference :
  ?contact_email:string prop ->
  ?dimensions:(string * string prop) list ->
  ?id:string prop ->
  ?ignore_safety_checks:string prop ->
  ?justification:string prop ->
  ?name:string prop ->
  ?parent:string prop ->
  ?quota_id:string prop ->
  ?service:string prop ->
  ?timeouts:timeouts ->
  quota_config:quota_config list ->
  unit ->
  google_cloud_quotas_quota_preference

val yojson_of_google_cloud_quotas_quota_preference :
  google_cloud_quotas_quota_preference -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  contact_email : string prop;
  create_time : string prop;
  dimensions : (string * string) list prop;
  etag : string prop;
  id : string prop;
  ignore_safety_checks : string prop;
  justification : string prop;
  name : string prop;
  parent : string prop;
  quota_id : string prop;
  reconciling : bool prop;
  service : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?contact_email:string prop ->
  ?dimensions:(string * string prop) list ->
  ?id:string prop ->
  ?ignore_safety_checks:string prop ->
  ?justification:string prop ->
  ?name:string prop ->
  ?parent:string prop ->
  ?quota_id:string prop ->
  ?service:string prop ->
  ?timeouts:timeouts ->
  quota_config:quota_config list ->
  string ->
  t

val make :
  ?contact_email:string prop ->
  ?dimensions:(string * string prop) list ->
  ?id:string prop ->
  ?ignore_safety_checks:string prop ->
  ?justification:string prop ->
  ?name:string prop ->
  ?parent:string prop ->
  ?quota_id:string prop ->
  ?service:string prop ->
  ?timeouts:timeouts ->
  quota_config:quota_config list ->
  string ->
  t Tf_core.resource
