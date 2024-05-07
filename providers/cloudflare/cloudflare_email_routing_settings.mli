(** Provides a resource for managing Email Routing settings.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_email_routing_settings

val cloudflare_email_routing_settings :
  ?id:string prop ->
  ?skip_wizard:bool prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_email_routing_settings

val yojson_of_cloudflare_email_routing_settings :
  cloudflare_email_routing_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created : string prop;
  enabled : bool prop;
  id : string prop;
  modified : string prop;
  name : string prop;
  skip_wizard : bool prop;
  status : string prop;
  tag : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?skip_wizard:bool prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?skip_wizard:bool prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
