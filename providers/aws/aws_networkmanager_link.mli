(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type bandwidth

val bandwidth :
  ?download_speed:float prop ->
  ?upload_speed:float prop ->
  unit ->
  bandwidth

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_networkmanager_link

val aws_networkmanager_link :
  ?description:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  site_id:string prop ->
  bandwidth:bandwidth list ->
  unit ->
  aws_networkmanager_link

val yojson_of_aws_networkmanager_link :
  aws_networkmanager_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  provider_name : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  site_id:string prop ->
  bandwidth:bandwidth list ->
  string ->
  t
