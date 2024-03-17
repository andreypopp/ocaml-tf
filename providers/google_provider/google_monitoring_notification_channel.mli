(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_notification_channel__sensitive_labels
type google_monitoring_notification_channel__timeouts
type google_monitoring_notification_channel

val google_monitoring_notification_channel :
  ?description:string ->
  ?display_name:string ->
  ?enabled:bool ->
  ?force_delete:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?user_labels:(string * string) list ->
  ?timeouts:google_monitoring_notification_channel__timeouts ->
  type_:string ->
  sensitive_labels:
    google_monitoring_notification_channel__sensitive_labels list ->
  string ->
  unit
