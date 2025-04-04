(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type location

val location :
  ?address:string prop ->
  ?latitude:string prop ->
  ?longitude:string prop ->
  unit ->
  location

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_networkmanager_site

val aws_networkmanager_site :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?location:location list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?location:location list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?location:location list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource
