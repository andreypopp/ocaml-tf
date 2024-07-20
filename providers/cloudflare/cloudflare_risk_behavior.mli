(** The [Risk Behavior](https://developers.cloudflare.com/cloudflare-one/insights/risk-score/) resource allows you to configure Cloudflare Risk Behaviors for an account.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type behavior

val behavior :
  enabled:bool prop ->
  name:string prop ->
  risk_level:string prop ->
  unit ->
  behavior

type cloudflare_risk_behavior

val cloudflare_risk_behavior :
  account_id:string prop ->
  behavior:behavior list ->
  unit ->
  cloudflare_risk_behavior

val yojson_of_cloudflare_risk_behavior :
  cloudflare_risk_behavior -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; account_id : string prop }

val register :
  ?tf_module:tf_module ->
  account_id:string prop ->
  behavior:behavior list ->
  string ->
  t

val make :
  account_id:string prop ->
  behavior:behavior list ->
  string ->
  t Tf_core.resource
