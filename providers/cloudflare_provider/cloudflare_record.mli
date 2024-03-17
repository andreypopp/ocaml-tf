(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_record__data
type cloudflare_record__timeouts
type cloudflare_record

type t = private {
  allow_overwrite : bool prop;
  comment : string prop;
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  metadata : (string * string) list prop;
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
  t
