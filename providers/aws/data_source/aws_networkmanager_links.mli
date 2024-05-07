(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_links

val aws_networkmanager_links :
  ?id:string prop ->
  ?provider_name:string prop ->
  ?site_id:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_links

val yojson_of_aws_networkmanager_links :
  aws_networkmanager_links -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  global_network_id : string prop;
  id : string prop;
  ids : string list prop;
  provider_name : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?site_id:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?provider_name:string prop ->
  ?site_id:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource
