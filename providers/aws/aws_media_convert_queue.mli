(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type reservation_plan_settings

val reservation_plan_settings :
  commitment:string prop ->
  renewal_type:string prop ->
  reserved_slots:float prop ->
  unit ->
  reservation_plan_settings

type aws_media_convert_queue

val aws_media_convert_queue :
  ?description:string prop ->
  ?id:string prop ->
  ?pricing_plan:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  reservation_plan_settings:reservation_plan_settings list ->
  unit ->
  aws_media_convert_queue

val yojson_of_aws_media_convert_queue :
  aws_media_convert_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  pricing_plan : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?pricing_plan:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  reservation_plan_settings:reservation_plan_settings list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?pricing_plan:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  reservation_plan_settings:reservation_plan_settings list ->
  string ->
  t Tf_core.resource
