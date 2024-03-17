(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_api_shield_operation

type t = private {
  endpoint : string prop;
  host : string prop;
  id : string prop;
  method_ : string prop;
  zone_id : string prop;
}

val cloudflare_api_shield_operation :
  ?id:string prop ->
  endpoint:string prop ->
  host:string prop ->
  method_:string prop ->
  zone_id:string prop ->
  string ->
  t
