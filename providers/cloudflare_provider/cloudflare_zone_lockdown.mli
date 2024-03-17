(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_lockdown__configurations
type cloudflare_zone_lockdown

val cloudflare_zone_lockdown :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  urls:string prop list ->
  zone_id:string prop ->
  configurations:cloudflare_zone_lockdown__configurations list ->
  string ->
  unit
