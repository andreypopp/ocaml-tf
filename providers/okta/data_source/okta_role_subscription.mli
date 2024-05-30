(** Get subscriptions of a Role with a specific type *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_role_subscription

val okta_role_subscription :
  ?id:string prop ->
  notification_type:string prop ->
  role_type:string prop ->
  unit ->
  okta_role_subscription

val yojson_of_okta_role_subscription : okta_role_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  notification_type : string prop;
  role_type : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  notification_type:string prop ->
  role_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  notification_type:string prop ->
  role_type:string prop ->
  string ->
  t Tf_core.resource
