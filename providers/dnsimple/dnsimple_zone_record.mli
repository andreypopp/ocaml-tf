(** DNSimple domain resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_zone_record

val dnsimple_zone_record :
  ?priority:float prop ->
  ?regions:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  zone_name:string prop ->
  unit ->
  dnsimple_zone_record

val yojson_of_dnsimple_zone_record : dnsimple_zone_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : float prop;
  name : string prop;
  name_normalized : string prop;
  priority : float prop;
  qualified_name : string prop;
  regions : string list prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  value_normalized : string prop;
  zone_id : string prop;
  zone_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?priority:float prop ->
  ?regions:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  zone_name:string prop ->
  string ->
  t

val make :
  ?priority:float prop ->
  ?regions:string prop list ->
  ?ttl:float prop ->
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  zone_name:string prop ->
  string ->
  t Tf_core.resource
