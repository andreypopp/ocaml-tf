(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone

type t = private {
  account_id : string prop;
  id : string prop;
  jump_start : bool prop;
  meta : (string * bool) list prop;
  name_servers : string list prop;
  paused : bool prop;
  plan : string prop;
  status : string prop;
  type_ : string prop;
  vanity_name_servers : string list prop;
  verification_key : string prop;
  zone : string prop;
}

val cloudflare_zone :
  ?id:string prop ->
  ?jump_start:bool prop ->
  ?paused:bool prop ->
  ?plan:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  zone:string prop ->
  string ->
  t
