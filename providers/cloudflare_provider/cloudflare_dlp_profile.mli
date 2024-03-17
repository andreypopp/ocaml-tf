(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_dlp_profile__entry__pattern
type cloudflare_dlp_profile__entry
type cloudflare_dlp_profile

val cloudflare_dlp_profile :
  ?description:string ->
  account_id:string ->
  allowed_match_count:float ->
  name:string ->
  type_:string ->
  entry:cloudflare_dlp_profile__entry list ->
  string ->
  unit
