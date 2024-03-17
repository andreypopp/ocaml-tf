(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_notification_policy_webhooks

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

val cloudflare_notification_policy_webhooks :
  ?id:string prop ->
  ?secret:string prop ->
  ?url:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t
