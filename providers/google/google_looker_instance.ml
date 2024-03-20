(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admin_settings = {
  allowed_email_domains : string prop list option; [@option]
      (** Email domain allowlist for the instance.

Define the email domains to which your users can deliver Looker (Google Cloud core) content.
Updating this list will restart the instance. Updating the allowed email domains from terraform
means the value provided will be considered as the entire list and not an amendment to the
existing list of allowed email domains. *)
}
[@@deriving yojson_of]
(** Looker instance Admin settings. *)

type custom_domain = {
  domain : string prop option; [@option]  (** Domain name *)
}
[@@deriving yojson_of]
(** Custom domain settings for a Looker instance. *)

type deny_maintenance_period__end_date = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a
month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without
a year. *)
}
[@@deriving yojson_of]
(** Required. Start date of the deny maintenance period *)

type deny_maintenance_period__start_date = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a
month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without
a year. *)
}
[@@deriving yojson_of]
(** Required. Start date of the deny maintenance period *)

type deny_maintenance_period__time = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** Required. Start time of the window in UTC time. *)

type deny_maintenance_period = {
  end_date : deny_maintenance_period__end_date list;
  start_date : deny_maintenance_period__start_date list;
  time : deny_maintenance_period__time list;
}
[@@deriving yojson_of]
(** Maintenance denial period for this instance.

You must allow at least 14 days of maintenance availability
between any two deny maintenance periods. *)

type encryption_config = {
  kms_key_name : string prop option; [@option]
      (** Name of the customer managed encryption key (CMEK) in KMS. *)
}
[@@deriving yojson_of]
(** Looker instance encryption settings. *)

type maintenance_window__start_time = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** Required. Start time of the window in UTC time. *)

type maintenance_window = {
  day_of_week : string prop;
      (** Required. Day of the week for this MaintenanceWindow (in UTC).

- MONDAY: Monday
- TUESDAY: Tuesday
- WEDNESDAY: Wednesday
- THURSDAY: Thursday
- FRIDAY: Friday
- SATURDAY: Saturday
- SUNDAY: Sunday Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  start_time : maintenance_window__start_time list;
}
[@@deriving yojson_of]
(** Maintenance window for an instance.

Maintenance of your instance takes place once a month, and will require
your instance to be restarted during updates, which will temporarily
disrupt service. *)

type oauth_config = {
  client_id : string prop;
      (** The client ID for the Oauth config. *)
  client_secret : string prop;
      (** The client secret for the Oauth config. *)
}
[@@deriving yojson_of]
(** Looker Instance OAuth login settings. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user_metadata = {
  additional_developer_user_count : float prop option; [@option]
      (** Number of additional Developer Users to allocate to the Looker Instance. *)
  additional_standard_user_count : float prop option; [@option]
      (** Number of additional Standard Users to allocate to the Looker Instance. *)
  additional_viewer_user_count : float prop option; [@option]
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
  consumer_network : string prop option; [@option]
      (** Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
Note that the consumer network may be in a different GCP project than the consumer
project that is hosting the Looker Instance. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The ID of the instance or a fully qualified identifier for the instance. *)
  platform_edition : string prop option; [@option]
      (** Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
- LOOKER_CORE_TRIAL: trial instance
- LOOKER_CORE_STANDARD: pay as you go standard instance
- LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
- LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
- LOOKER_CORE_EMBED_ANNUAL: subscription embed instance Default value: LOOKER_CORE_TRIAL Possible values: [LOOKER_CORE_TRIAL, LOOKER_CORE_STANDARD, LOOKER_CORE_STANDARD_ANNUAL, LOOKER_CORE_ENTERPRISE_ANNUAL, LOOKER_CORE_EMBED_ANNUAL] *)
  private_ip_enabled : bool prop option; [@option]
      (** Whether private IP is enabled on the Looker instance. *)
  project : string prop option; [@option]  (** project *)
  public_ip_enabled : bool prop option; [@option]
      (** Whether public IP is enabled on the Looker instance. *)
  region : string prop option; [@option]
      (** The name of the Looker region of the instance. *)
  reserved_range : string prop option; [@option]
      (** Name of a reserved IP address range within the consumer network, to be used for
private service access connection. User may or may not specify this in a request. *)
  admin_settings : admin_settings list;
  custom_domain : custom_domain list;
  deny_maintenance_period : deny_maintenance_period list;
  encryption_config : encryption_config list;
  maintenance_window : maintenance_window list;
  oauth_config : oauth_config list;
  timeouts : timeouts option;
  user_metadata : user_metadata list;
}
[@@deriving yojson_of]
(** google_looker_instance *)

let admin_settings ?allowed_email_domains () : admin_settings =
  { allowed_email_domains }

let custom_domain ?domain () : custom_domain = { domain }

let deny_maintenance_period__end_date ?day ?month ?year () :
    deny_maintenance_period__end_date =
  { day; month; year }

let deny_maintenance_period__start_date ?day ?month ?year () :
    deny_maintenance_period__start_date =
  { day; month; year }

let deny_maintenance_period__time ?hours ?minutes ?nanos ?seconds ()
    : deny_maintenance_period__time =
  { hours; minutes; nanos; seconds }

let deny_maintenance_period ~end_date ~start_date ~time () :
    deny_maintenance_period =
  { end_date; start_date; time }

let encryption_config ?kms_key_name () : encryption_config =
  { kms_key_name }

let maintenance_window__start_time ?hours ?minutes ?nanos ?seconds ()
    : maintenance_window__start_time =
  { hours; minutes; nanos; seconds }

let maintenance_window ~day_of_week ~start_time () :
    maintenance_window =
  { day_of_week; start_time }

let oauth_config ~client_id ~client_secret () : oauth_config =
  { client_id; client_secret }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let user_metadata ?additional_developer_user_count
    ?additional_standard_user_count ?additional_viewer_user_count ()
    : user_metadata =
  {
    additional_developer_user_count;
    additional_standard_user_count;
    additional_viewer_user_count;
  }

let google_looker_instance ?consumer_network ?id ?platform_edition
    ?private_ip_enabled ?project ?public_ip_enabled ?region
    ?reserved_range ?timeouts ~name ~admin_settings ~custom_domain
    ~deny_maintenance_period ~encryption_config ~maintenance_window
    ~oauth_config ~user_metadata () : google_looker_instance =
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

type t = {
  consumer_network : string prop;
  create_time : string prop;
  egress_public_ip : string prop;
  id : string prop;
  ingress_private_ip : string prop;
  ingress_public_ip : string prop;
  looker_uri : string prop;
  looker_version : string prop;
  name : string prop;
  platform_edition : string prop;
  private_ip_enabled : bool prop;
  project : string prop;
  public_ip_enabled : bool prop;
  region : string prop;
  reserved_range : string prop;
  update_time : string prop;
}

let make ?consumer_network ?id ?platform_edition ?private_ip_enabled
    ?project ?public_ip_enabled ?region ?reserved_range ?timeouts
    ~name ~admin_settings ~custom_domain ~deny_maintenance_period
    ~encryption_config ~maintenance_window ~oauth_config
    ~user_metadata __id =
  let __type = "google_looker_instance" in
  let __attrs =
    ({
       consumer_network =
         Prop.computed __type __id "consumer_network";
       create_time = Prop.computed __type __id "create_time";
       egress_public_ip =
         Prop.computed __type __id "egress_public_ip";
       id = Prop.computed __type __id "id";
       ingress_private_ip =
         Prop.computed __type __id "ingress_private_ip";
       ingress_public_ip =
         Prop.computed __type __id "ingress_public_ip";
       looker_uri = Prop.computed __type __id "looker_uri";
       looker_version = Prop.computed __type __id "looker_version";
       name = Prop.computed __type __id "name";
       platform_edition =
         Prop.computed __type __id "platform_edition";
       private_ip_enabled =
         Prop.computed __type __id "private_ip_enabled";
       project = Prop.computed __type __id "project";
       public_ip_enabled =
         Prop.computed __type __id "public_ip_enabled";
       region = Prop.computed __type __id "region";
       reserved_range = Prop.computed __type __id "reserved_range";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_looker_instance
        (google_looker_instance ?consumer_network ?id
           ?platform_edition ?private_ip_enabled ?project
           ?public_ip_enabled ?region ?reserved_range ?timeouts ~name
           ~admin_settings ~custom_domain ~deny_maintenance_period
           ~encryption_config ~maintenance_window ~oauth_config
           ~user_metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?consumer_network ?id ?platform_edition
    ?private_ip_enabled ?project ?public_ip_enabled ?region
    ?reserved_range ?timeouts ~name ~admin_settings ~custom_domain
    ~deny_maintenance_period ~encryption_config ~maintenance_window
    ~oauth_config ~user_metadata __id =
  let (r : _ Tf_core.resource) =
    make ?consumer_network ?id ?platform_edition ?private_ip_enabled
      ?project ?public_ip_enabled ?region ?reserved_range ?timeouts
      ~name ~admin_settings ~custom_domain ~deny_maintenance_period
      ~encryption_config ~maintenance_window ~oauth_config
      ~user_metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
