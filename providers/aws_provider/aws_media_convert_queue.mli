(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_media_convert_queue__reservation_plan_settings
type aws_media_convert_queue

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

val aws_media_convert_queue :
  ?description:string prop ->
  ?id:string prop ->
  ?pricing_plan:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  reservation_plan_settings:
    aws_media_convert_queue__reservation_plan_settings list ->
  string ->
  t
