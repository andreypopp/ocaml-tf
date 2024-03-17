(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_notification_channel__sensitive_labels = {
  auth_token : string prop option; [@option]
      (** An authorization token for a notification channel. Channel types that support this field include: slack *)
  password : string prop option; [@option]
      (** An password for a notification channel. Channel types that support this field include: webhook_basicauth *)
  service_key : string prop option; [@option]
      (** An servicekey token for a notification channel. Channel types that support this field include: pagerduty *)
}
[@@deriving yojson_of]
(** Different notification type behaviors are configured primarily using the the 'labels' field on this
resource. This block contains the labels which contain secrets or passwords so that they can be marked
sensitive and hidden from plan output. The name of the field, eg: password, will be the key
in the 'labels' map in the api request.

Credentials may not be specified in both locations and will cause an error. Changing from one location
to a different credential configuration in the config will require an apply to update state. *)

type google_monitoring_notification_channel__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_notification_channel__timeouts *)

type google_monitoring_notification_channel = {
  description : string prop option; [@option]
      (** An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters. *)
  display_name : string prop option; [@option]
      (** An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters. *)
  enabled : bool prop option; [@option]
      (** Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future. *)
  force_delete : bool prop option; [@option]
      (** If true, the notification channel will be deleted regardless
of its use in alert policies (the policies will be updated
to remove the channel). If false, channels that are still
referenced by an existing alerting policy will fail to be
deleted in a delete operation. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Configuration fields that define the channel and its behavior. The
permissible and required labels are specified in the
NotificationChannelDescriptor corresponding to the type field.

Labels with sensitive data are obfuscated by the API and therefore Terraform cannot
determine if there are upstream changes to these fields. They can also be configured via
the sensitive_labels block, but cannot be configured in both places. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop; [@key "type"]
      (** The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as email, slack, etc... *)
  user_labels : (string * string prop) list option; [@option]
      (** User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. *)
  sensitive_labels :
    google_monitoring_notification_channel__sensitive_labels list;
  timeouts : google_monitoring_notification_channel__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_notification_channel *)

let google_monitoring_notification_channel ?description ?display_name
    ?enabled ?force_delete ?id ?labels ?project ?user_labels
    ?timeouts ~type_ ~sensitive_labels __resource_id =
  let __resource_type = "google_monitoring_notification_channel" in
  let __resource =
    {
      description;
      display_name;
      enabled;
      force_delete;
      id;
      labels;
      project;
      type_;
      user_labels;
      sensitive_labels;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_notification_channel __resource);
  ()
