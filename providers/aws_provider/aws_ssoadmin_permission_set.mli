(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_permission_set__timeouts
type aws_ssoadmin_permission_set

val aws_ssoadmin_permission_set :
  ?description:string prop ->
  ?id:string prop ->
  ?relay_state:string prop ->
  ?session_duration:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ssoadmin_permission_set__timeouts ->
  instance_arn:string prop ->
  name:string prop ->
  string ->
  unit
