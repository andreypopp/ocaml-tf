(** Provides a Cloudflare record resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data

val data :
  ?algorithm:float prop ->
  ?altitude:float prop ->
  ?certificate:string prop ->
  ?content:string prop ->
  ?digest:string prop ->
  ?digest_type:float prop ->
  ?fingerprint:string prop ->
  ?flags:string prop ->
  ?key_tag:float prop ->
  ?lat_degrees:float prop ->
  ?lat_direction:string prop ->
  ?lat_minutes:float prop ->
  ?lat_seconds:float prop ->
  ?long_degrees:float prop ->
  ?long_direction:string prop ->
  ?long_minutes:float prop ->
  ?long_seconds:float prop ->
  ?matching_type:float prop ->
  ?name:string prop ->
  ?order:float prop ->
  ?port:float prop ->
  ?precision_horz:float prop ->
  ?precision_vert:float prop ->
  ?preference:float prop ->
  ?priority:float prop ->
  ?proto:string prop ->
  ?protocol:float prop ->
  ?public_key:string prop ->
  ?regex:string prop ->
  ?replacement:string prop ->
  ?selector:float prop ->
  ?service:string prop ->
  ?size:float prop ->
  ?tag:string prop ->
  ?target:string prop ->
  ?type_:float prop ->
  ?usage:float prop ->
  ?value:string prop ->
  ?weight:float prop ->
  unit ->
  data

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

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
  ?data:data list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_record

val yojson_of_cloudflare_record : cloudflare_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_overwrite : bool prop;
  comment : string prop;
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  modified_on : string prop;
  name : string prop;
  priority : float prop;
  proxiable : bool prop;
  proxied : bool prop;
  tags : string list prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_overwrite:bool prop ->
  ?comment:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?proxied:bool prop ->
  ?tags:string prop list ->
  ?ttl:float prop ->
  ?value:string prop ->
  ?data:data list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?allow_overwrite:bool prop ->
  ?comment:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?proxied:bool prop ->
  ?tags:string prop list ->
  ?ttl:float prop ->
  ?value:string prop ->
  ?data:data list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
