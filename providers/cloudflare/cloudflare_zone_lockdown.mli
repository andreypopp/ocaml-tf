(** Provides a Cloudflare Zone Lockdown resource. Zone Lockdown allows
you to define one or more URLs (with wildcard matching on the domain
or path) that will only permit access if the request originates
from an IP address that matches a safelist of one or more IP
addresses and/or IP ranges.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?priority:float prop ->
  urls:string prop list ->
  zone_id:string prop ->
  configurations:configurations list ->
  string ->
  t Tf_core.resource
