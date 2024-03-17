(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_media_convert_queue__reservation_plan_settings
type aws_media_convert_queue

val aws_media_convert_queue :
  ?description:string ->
  ?id:string ->
  ?pricing_plan:string ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  reservation_plan_settings:
    aws_media_convert_queue__reservation_plan_settings list ->
  string ->
  unit
