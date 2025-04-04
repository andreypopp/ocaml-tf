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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?reservation_plan_settings:reservation_plan_settings list ->
  name:string prop ->
  unit ->
  aws_media_convert_queue

val yojson_of_aws_media_convert_queue :
  aws_media_convert_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  pricing_plan : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?pricing_plan:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?reservation_plan_settings:reservation_plan_settings list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?pricing_plan:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?reservation_plan_settings:reservation_plan_settings list ->
  name:string prop ->
  string ->
  t Tf_core.resource
