(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_location_tracker

val aws_location_tracker :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?position_filtering:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  tracker_name:string prop ->
  unit ->
  aws_location_tracker

val yojson_of_aws_location_tracker : aws_location_tracker -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  position_filtering : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  tracker_name:string prop ->
  string ->
  t
