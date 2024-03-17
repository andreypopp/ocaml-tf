(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_permission_set__timeouts
type aws_ssoadmin_permission_set

val aws_ssoadmin_permission_set :
  ?description:string ->
  ?id:string ->
  ?relay_state:string ->
  ?session_duration:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ssoadmin_permission_set__timeouts ->
  instance_arn:string ->
  name:string ->
  string ->
  unit
