(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_record__data
type cloudflare_record__timeouts
type cloudflare_record

val cloudflare_record :
  ?allow_overwrite:bool ->
  ?comment:string ->
  ?priority:float ->
  ?proxied:bool ->
  ?tags:string list ->
  ?timeouts:cloudflare_record__timeouts ->
  name:string ->
  type_:string ->
  zone_id:string ->
  data:cloudflare_record__data list ->
  string ->
  unit
