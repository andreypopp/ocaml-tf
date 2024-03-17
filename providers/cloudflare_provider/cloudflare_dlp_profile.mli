(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_dlp_profile__entry__pattern
type cloudflare_dlp_profile__entry
type cloudflare_dlp_profile

val cloudflare_dlp_profile :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  allowed_match_count:float prop ->
  name:string prop ->
  type_:string prop ->
  entry:cloudflare_dlp_profile__entry list ->
  string ->
  unit
