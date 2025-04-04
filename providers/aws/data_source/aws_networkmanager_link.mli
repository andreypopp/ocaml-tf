(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bandwidth = {
  download_speed : float prop;  (** download_speed *)
  upload_speed : float prop;  (** upload_speed *)
}

type aws_networkmanager_link

val aws_networkmanager_link :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  link_id:string prop ->
  unit ->
  aws_networkmanager_link

val yojson_of_aws_networkmanager_link :
  aws_networkmanager_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bandwidth : bandwidth list prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  provider_name : string prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  link_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  link_id:string prop ->
  string ->
  t Tf_core.resource
