(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_scheduler_schedule_group__timeouts
type aws_scheduler_schedule_group

type t = private {
  arn : string prop;
  creation_date : string prop;
  id : string prop;
  last_modification_date : string prop;
  name : string prop;
  name_prefix : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_scheduler_schedule_group :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_scheduler_schedule_group__timeouts ->
  string ->
  t
