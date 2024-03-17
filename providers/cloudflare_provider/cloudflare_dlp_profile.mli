(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_dlp_profile__entry__pattern
type cloudflare_dlp_profile__entry
type cloudflare_dlp_profile

type t = private {
  account_id : string prop;
  allowed_match_count : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val cloudflare_dlp_profile :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  allowed_match_count:float prop ->
  name:string prop ->
  type_:string prop ->
  entry:cloudflare_dlp_profile__entry list ->
  string ->
  t
