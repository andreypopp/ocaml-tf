(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type location = {
  address : string prop;  (** address *)
  latitude : string prop;  (** latitude *)
  longitude : string prop;  (** longitude *)
}

type aws_networkmanager_site

val aws_networkmanager_site :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  site_id:string prop ->
  unit ->
  aws_networkmanager_site

val yojson_of_aws_networkmanager_site :
  aws_networkmanager_site -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  location : location list prop;
  site_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  site_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  site_id:string prop ->
  string ->
  t Tf_core.resource
