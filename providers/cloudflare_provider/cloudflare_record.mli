(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_record__data
type cloudflare_record__timeouts
type cloudflare_record

val cloudflare_record :
  ?allow_overwrite:bool prop ->
  ?comment:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?proxied:bool prop ->
  ?tags:string prop list ->
  ?ttl:float prop ->
  ?value:string prop ->
  ?timeouts:cloudflare_record__timeouts ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  data:cloudflare_record__data list ->
  string ->
  unit
