(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_location_tracker

val aws_location_tracker :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?position_filtering:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  tracker_name:string prop ->
  unit ->
  aws_location_tracker

val yojson_of_aws_location_tracker : aws_location_tracker -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  position_filtering : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tracker_arn : string prop;
  tracker_name : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?position_filtering:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  tracker_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?position_filtering:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  tracker_name:string prop ->
  string ->
  t Tf_core.resource
