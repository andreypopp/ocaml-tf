(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filters

val filters : unit -> filters

type sns

val sns : unit -> sns

type aws_devopsguru_notification_channel

val aws_devopsguru_notification_channel :
  ?filters:filters list ->
  ?sns:sns list ->
  id:string prop ->
  unit ->
  aws_devopsguru_notification_channel

val yojson_of_aws_devopsguru_notification_channel :
  aws_devopsguru_notification_channel -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?filters:filters list ->
  ?sns:sns list ->
  id:string prop ->
  string ->
  t

val make :
  ?filters:filters list ->
  ?sns:sns list ->
  id:string prop ->
  string ->
  t Tf_core.resource
