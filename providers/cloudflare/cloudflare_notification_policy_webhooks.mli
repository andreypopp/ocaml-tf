(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_notification_policy_webhooks

val cloudflare_notification_policy_webhooks :
  ?id:string prop ->
  ?secret:string prop ->
  ?url:string prop ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_notification_policy_webhooks

val yojson_of_cloudflare_notification_policy_webhooks :
  cloudflare_notification_policy_webhooks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  created_at : string prop;
  id : string prop;
  last_failure : string prop;
  last_success : string prop;
  name : string prop;
  secret : string prop;
  type_ : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?secret:string prop ->
  ?url:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?secret:string prop ->
  ?url:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
