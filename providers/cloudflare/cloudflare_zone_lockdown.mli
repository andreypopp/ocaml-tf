(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type configurations

val configurations :
  target:string prop -> value:string prop -> unit -> configurations

type cloudflare_zone_lockdown

val cloudflare_zone_lockdown :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  urls:string prop list ->
  zone_id:string prop ->
  configurations:configurations list ->
  unit ->
  cloudflare_zone_lockdown

val yojson_of_cloudflare_zone_lockdown :
  cloudflare_zone_lockdown -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  paused : bool prop;
  priority : float prop;
  urls : string list prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  urls:string prop list ->
  zone_id:string prop ->
  configurations:configurations list ->
  string ->
  t
