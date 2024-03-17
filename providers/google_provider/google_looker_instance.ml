(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_looker_instance__admin_settings = {
  allowed_email_domains : string list option; [@option]
      (** Email domain allowlist for the instance.

Define the email domains to which your users can deliver Looker (Google Cloud core) content.
Updating this list will restart the instance. Updating the allowed email domains from terraform
means the value provided will be considered as the entire list and not an amendment to the
existing list of allowed email domains. *)
}
[@@deriving yojson_of]
(** Looker instance Admin settings. *)

type google_looker_instance__custom_domain = {
  domain : string option; [@option]  (** Domain name *)
  state : string;  (** Status of the custom domain. *)
}
[@@deriving yojson_of]
(** Custom domain settings for a Looker instance. *)

type google_looker_instance__deny_maintenance_period__end_date = {
  day : float option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
to specify a year by itself or a year and month where the day isn't significant. *)
  month : float option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a
month and day. *)
  year : float option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without
a year. *)
}
[@@deriving yojson_of]
(** Required. Start date of the deny maintenance period *)

type google_looker_instance__deny_maintenance_period__start_date = {
  day : float option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
to specify a year by itself or a year and month where the day isn't significant. *)
  month : float option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a
month and day. *)
  year : float option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without
a year. *)
}
[@@deriving yojson_of]
(** Required. Start date of the deny maintenance period *)

type google_looker_instance__deny_maintenance_period__time = {
  hours : float option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** Required. Start time of the window in UTC time. *)

type google_looker_instance__deny_maintenance_period = {
  end_date :
    google_looker_instance__deny_maintenance_period__end_date list;
  start_date :
    google_looker_instance__deny_maintenance_period__start_date list;
  time : google_looker_instance__deny_maintenance_period__time list;
}
[@@deriving yojson_of]
(** Maintenance denial period for this instance.

You must allow at least 14 days of maintenance availability
between any two deny maintenance periods. *)

type google_looker_instance__encryption_config = {
  kms_key_name : string option; [@option]
      (** Name of the customer managed encryption key (CMEK) in KMS. *)
  kms_key_name_version : string;
      (** Full name and version of the CMEK key currently in use to encrypt Looker data. *)
  kms_key_state : string;
      (** Status of the customer managed encryption key (CMEK) in KMS. *)
}
[@@deriving yojson_of]
(** Looker instance encryption settings. *)

type google_looker_instance__maintenance_window__start_time = {
  hours : float option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** Required. Start time of the window in UTC time. *)

type google_looker_instance__maintenance_window = {
  day_of_week : string;
      (** Required. Day of the week for this MaintenanceWindow (in UTC).

- MONDAY: Monday
- TUESDAY: Tuesday
- WEDNESDAY: Wednesday
- THURSDAY: Thursday
- FRIDAY: Friday
- SATURDAY: Saturday
- SUNDAY: Sunday Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  start_time :
    google_looker_instance__maintenance_window__start_time list;
}
[@@deriving yojson_of]
(** Maintenance window for an instance.

Maintenance of your instance takes place once a month, and will require
your instance to be restarted during updates, which will temporarily
disrupt service. *)

type google_looker_instance__oauth_config = {
  client_id : string;  (** The client ID for the Oauth config. *)
  client_secret : string;
      (** The client secret for the Oauth config. *)
}
[@@deriving yojson_of]
(** Looker Instance OAuth login settings. *)

type google_looker_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_looker_instance__timeouts *)

type google_looker_instance__user_metadata = {
  additional_developer_user_count : float option; [@option]
      (** Number of additional Developer Users to allocate to the Looker Instance. *)
  additional_standard_user_count : float option; [@option]
      (** Number of additional Standard Users to allocate to the Looker Instance. *)
  additional_viewer_user_count : float option; [@option]
      (** Number of additional Viewer Users to allocate to the Looker Instance. *)
}
[@@deriving yojson_of]
(** Metadata about users for a Looker instance.

These settings are only available when platform edition LOOKER_CORE_STANDARD is set.

There are ten Standard and two Developer users included in the cost of the product.
You can allocate additional Standard, Viewer, and Developer users for this instance.
It is an optional step and can be modified later.

With the Standard edition of Looker (Google Cloud core), you can provision up to 50
total users, distributed across Viewer, Standard, and Developer. *)

type google_looker_instance = {
  consumer_network : string option; [@option]
      (** Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
Note that the consumer network may be in a different GCP project than the consumer
project that is hosting the Looker Instance. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** The ID of the instance or a fully qualified identifier for the instance. *)
  platform_edition : string option; [@option]
      (** Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
- LOOKER_CORE_TRIAL: trial instance
- LOOKER_CORE_STANDARD: pay as you go standard instance
- LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
- LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
- LOOKER_CORE_EMBED_ANNUAL: subscription embed instance Default value: LOOKER_CORE_TRIAL Possible values: [LOOKER_CORE_TRIAL, LOOKER_CORE_STANDARD, LOOKER_CORE_STANDARD_ANNUAL, LOOKER_CORE_ENTERPRISE_ANNUAL, LOOKER_CORE_EMBED_ANNUAL] *)
  private_ip_enabled : bool option; [@option]
      (** Whether private IP is enabled on the Looker instance. *)
  project : string option; [@option]  (** project *)
  public_ip_enabled : bool option; [@option]
      (** Whether public IP is enabled on the Looker instance. *)
  region : string option; [@option]
      (** The name of the Looker region of the instance. *)
  reserved_range : string option; [@option]
      (** Name of a reserved IP address range within the consumer network, to be used for
private service access connection. User may or may not specify this in a request. *)
  admin_settings : google_looker_instance__admin_settings list;
  custom_domain : google_looker_instance__custom_domain list;
  deny_maintenance_period :
    google_looker_instance__deny_maintenance_period list;
  encryption_config : google_looker_instance__encryption_config list;
  maintenance_window :
    google_looker_instance__maintenance_window list;
  oauth_config : google_looker_instance__oauth_config list;
  timeouts : google_looker_instance__timeouts option;
  user_metadata : google_looker_instance__user_metadata list;
}
[@@deriving yojson_of]
(** google_looker_instance *)

let google_looker_instance ?consumer_network ?id ?platform_edition
    ?private_ip_enabled ?project ?public_ip_enabled ?region
    ?reserved_range ?timeouts ~name ~admin_settings ~custom_domain
    ~deny_maintenance_period ~encryption_config ~maintenance_window
    ~oauth_config ~user_metadata __resource_id =
  let __resource_type = "google_looker_instance" in
  let __resource =
    {
      consumer_network;
      id;
      name;
      platform_edition;
      private_ip_enabled;
      project;
      public_ip_enabled;
      region;
      reserved_range;
      admin_settings;
      custom_domain;
      deny_maintenance_period;
      encryption_config;
      maintenance_window;
      oauth_config;
      timeouts;
      user_metadata;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_looker_instance __resource);
  ()
