(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_posture_rule__input
type cloudflare_device_posture_rule__match
type cloudflare_device_posture_rule

val cloudflare_device_posture_rule :
  ?description:string ->
  ?expiration:string ->
  ?id:string ->
  ?name:string ->
  ?schedule:string ->
  account_id:string ->
  type_:string ->
  input:cloudflare_device_posture_rule__input list ->
  match_:cloudflare_device_posture_rule__match list ->
  string ->
  unit
