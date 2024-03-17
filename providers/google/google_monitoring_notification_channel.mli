(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_notification_channel__sensitive_labels
type google_monitoring_notification_channel__timeouts
type google_monitoring_notification_channel

type t = private {
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

val google_monitoring_notification_channel :
  ?description:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user_labels:(string * string prop) list ->
  ?timeouts:google_monitoring_notification_channel__timeouts ->
  type_:string prop ->
  sensitive_labels:
    google_monitoring_notification_channel__sensitive_labels list ->
  string ->
  t
