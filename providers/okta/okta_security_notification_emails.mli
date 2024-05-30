(** Manages Security Notification Emails
		This resource allows you to configure Security Notification Emails.
		~> **WARNING:** This resource is available only when using a SSWS API token in the provider config, it is incompatible with OAuth 2.0 authentication.
		~> **WARNING:** This resource makes use of an internal/private Okta API endpoint that could change without notice rendering this resource inoperable. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_security_notification_emails

val okta_security_notification_emails :
  ?id:string prop ->
  ?report_suspicious_activity_enabled:bool prop ->
  ?send_email_for_factor_enrollment_enabled:bool prop ->
  ?send_email_for_factor_reset_enabled:bool prop ->
  ?send_email_for_new_device_enabled:bool prop ->
  ?send_email_for_password_changed_enabled:bool prop ->
  unit ->
  okta_security_notification_emails

val yojson_of_okta_security_notification_emails :
  okta_security_notification_emails -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  report_suspicious_activity_enabled : bool prop;
  send_email_for_factor_enrollment_enabled : bool prop;
  send_email_for_factor_reset_enabled : bool prop;
  send_email_for_new_device_enabled : bool prop;
  send_email_for_password_changed_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?report_suspicious_activity_enabled:bool prop ->
  ?send_email_for_factor_enrollment_enabled:bool prop ->
  ?send_email_for_factor_reset_enabled:bool prop ->
  ?send_email_for_new_device_enabled:bool prop ->
  ?send_email_for_password_changed_enabled:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?report_suspicious_activity_enabled:bool prop ->
  ?send_email_for_factor_enrollment_enabled:bool prop ->
  ?send_email_for_factor_reset_enabled:bool prop ->
  ?send_email_for_new_device_enabled:bool prop ->
  ?send_email_for_password_changed_enabled:bool prop ->
  string ->
  t Tf_core.resource
