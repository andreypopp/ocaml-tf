(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sensitive_labels = {
  auth_token : string prop;  (** auth_token *)
  password : string prop;  (** password *)
  service_key : string prop;  (** service_key *)
}

type google_monitoring_notification_channel

val google_monitoring_notification_channel :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?type_:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
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
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  sensitive_labels : sensitive_labels list prop;
  type_ : string prop;
  user_labels : string Tf_core.assoc prop;
  verification_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?type_:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?type_:string prop ->
  ?user_labels:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
