(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_notification_policy__email_integration
type cloudflare_notification_policy__filters
type cloudflare_notification_policy__pagerduty_integration
type cloudflare_notification_policy__webhooks_integration
type cloudflare_notification_policy

val cloudflare_notification_policy :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  alert_type:string prop ->
  enabled:bool prop ->
  name:string prop ->
  email_integration:
    cloudflare_notification_policy__email_integration list ->
  filters:cloudflare_notification_policy__filters list ->
  pagerduty_integration:
    cloudflare_notification_policy__pagerduty_integration list ->
  webhooks_integration:
    cloudflare_notification_policy__webhooks_integration list ->
  string ->
  unit
