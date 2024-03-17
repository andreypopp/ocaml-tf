(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_rule__configuration
type cloudflare_access_rule

type t = private {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  notes : string prop;
  zone_id : string prop;
}

val cloudflare_access_rule :
  ?account_id:string prop ->
  ?id:string prop ->
  ?notes:string prop ->
  ?zone_id:string prop ->
  mode:string prop ->
  configuration:cloudflare_access_rule__configuration list ->
  string ->
  t
