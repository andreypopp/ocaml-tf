(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sensitive_labels

val sensitive_labels :
  ?auth_token:string prop ->
  ?password:string prop ->
  ?service_key:string prop ->
  unit ->
  sensitive_labels

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_monitoring_notification_channel

val google_monitoring_notification_channel :
  ?description:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?sensitive_labels:sensitive_labels list ->
  ?timeouts:timeouts ->
  type_:string prop ->
  unit ->
  google_monitoring_notification_channel

val yojson_of_google_monitoring_notification_channel :
  google_monitoring_notification_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  force_delete : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
  user_labels : (string * string) list prop;
  verification_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?sensitive_labels:sensitive_labels list ->
  ?timeouts:timeouts ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?sensitive_labels:sensitive_labels list ->
  ?timeouts:timeouts ->
  type_:string prop ->
  string ->
  t Tf_core.resource
