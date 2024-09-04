(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_location_geofence_collection

val aws_location_geofence_collection :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  collection_name:string prop ->
  unit ->
  aws_location_geofence_collection

val yojson_of_aws_location_geofence_collection :
  aws_location_geofence_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collection_arn : string prop;
  collection_name : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  collection_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  collection_name:string prop ->
  string ->
  t Tf_core.resource
