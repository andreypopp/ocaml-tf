(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_posture_rule__input
type cloudflare_device_posture_rule__match
type cloudflare_device_posture_rule

val cloudflare_device_posture_rule :
  ?description:string prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?schedule:string prop ->
  account_id:string prop ->
  type_:string prop ->
  input:cloudflare_device_posture_rule__input list ->
  match_:cloudflare_device_posture_rule__match list ->
  string ->
  unit
