(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_lockdown__configurations
type cloudflare_zone_lockdown

val cloudflare_zone_lockdown :
  ?description:string ->
  ?paused:bool ->
  ?priority:float ->
  urls:string list ->
  zone_id:string ->
  configurations:cloudflare_zone_lockdown__configurations list ->
  string ->
  unit
