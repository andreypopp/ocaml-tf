(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_media_convert_queue__reservation_plan_settings
type aws_media_convert_queue

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
  unit
