(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_email_routing_settings

type t = private {
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

val cloudflare_email_routing_settings :
  ?id:string prop ->
  ?skip_wizard:bool prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t
