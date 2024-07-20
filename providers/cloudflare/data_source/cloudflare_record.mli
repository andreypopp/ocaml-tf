(** Use this data source to lookup a single [DNS Record](https://api.cloudflare.com/#dns-records-for-a-zone-properties).
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_record

val cloudflare_record :
  ?content:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?type_:string prop ->
  hostname:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_record

val yojson_of_cloudflare_record : cloudflare_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  content : string prop;
  hostname : string prop;
  id : string prop;
  priority : float prop;
  proxiable : bool prop;
  proxied : bool prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  zone_id : string prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?type_:string prop ->
  hostname:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?content:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?type_:string prop ->
  hostname:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
