(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_location

val aws_location :
  ?subnet_arn:string prop ->
  ?zone:string prop ->
  unit ->
  aws_location

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

type aws_networkmanager_device

val aws_networkmanager_device :
  ?description:string prop ->
  ?id:string prop ->
  ?model:string prop ->
  ?serial_number:string prop ->
  ?site_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?vendor:string prop ->
  ?aws_location:aws_location list ->
  ?location:location list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_device

val yojson_of_aws_networkmanager_device :
  aws_networkmanager_device -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  model : string prop;
  serial_number : string prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  vendor : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?model:string prop ->
  ?serial_number:string prop ->
  ?site_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?vendor:string prop ->
  ?aws_location:aws_location list ->
  ?location:location list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?model:string prop ->
  ?serial_number:string prop ->
  ?site_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?vendor:string prop ->
  ?aws_location:aws_location list ->
  ?location:location list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource
