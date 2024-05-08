(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admin_settings = {
  allowed_email_domains : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : admin_settings) -> ()

let yojson_of_admin_settings =
  (function
   | { allowed_email_domains = v_allowed_email_domains } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allowed_email_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_email_domains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : admin_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_settings

[@@@deriving.end]

type custom_domain = { domain : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_domain) -> ()

let yojson_of_custom_domain =
  (function
   | { domain = v_domain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_domain

[@@@deriving.end]

type deny_maintenance_period__end_date = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deny_maintenance_period__end_date) -> ()

let yojson_of_deny_maintenance_period__end_date =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deny_maintenance_period__end_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deny_maintenance_period__end_date

[@@@deriving.end]

type deny_maintenance_period__start_date = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deny_maintenance_period__start_date) -> ()

let yojson_of_deny_maintenance_period__start_date =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deny_maintenance_period__start_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deny_maintenance_period__start_date

[@@@deriving.end]

type deny_maintenance_period__time = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deny_maintenance_period__time) -> ()

let yojson_of_deny_maintenance_period__time =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deny_maintenance_period__time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deny_maintenance_period__time

[@@@deriving.end]

type deny_maintenance_period = {
  end_date : deny_maintenance_period__end_date list;
      [@default []] [@yojson_drop_default ( = )]
  start_date : deny_maintenance_period__start_date list;
      [@default []] [@yojson_drop_default ( = )]
  time : deny_maintenance_period__time list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deny_maintenance_period) -> ()

let yojson_of_deny_maintenance_period =
  (function
   | {
       end_date = v_end_date;
       start_date = v_start_date;
       time = v_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deny_maintenance_period__time)
               v_time
           in
           let bnd = "time", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_start_date then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deny_maintenance_period__start_date)
               v_start_date
           in
           let bnd = "start_date", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_end_date then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deny_maintenance_period__end_date)
               v_end_date
           in
           let bnd = "end_date", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deny_maintenance_period -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deny_maintenance_period

[@@@deriving.end]

type encryption_config = {
  kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config) -> ()

let yojson_of_encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config

[@@@deriving.end]

type maintenance_window__start_time = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window__start_time) -> ()

let yojson_of_maintenance_window__start_time =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_window__start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window__start_time

[@@@deriving.end]

type maintenance_window = {
  day_of_week : string prop;
  start_time : maintenance_window__start_time list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | { day_of_week = v_day_of_week; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_start_time then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_window__start_time)
               v_start_time
           in
           let bnd = "start_time", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type oauth_config = {
  client_id : string prop;
  client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oauth_config) -> ()

let yojson_of_oauth_config =
  (function
   | { client_id = v_client_id; client_secret = v_client_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : oauth_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oauth_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type user_metadata = {
  additional_developer_user_count : float prop option; [@option]
  additional_standard_user_count : float prop option; [@option]
  additional_viewer_user_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_metadata) -> ()

let yojson_of_user_metadata =
  (function
   | {
       additional_developer_user_count =
         v_additional_developer_user_count;
       additional_standard_user_count =
         v_additional_standard_user_count;
       additional_viewer_user_count = v_additional_viewer_user_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_additional_viewer_user_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "additional_viewer_user_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_standard_user_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "additional_standard_user_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_developer_user_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "additional_developer_user_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_metadata

[@@@deriving.end]

type google_looker_instance = {
  consumer_network : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  platform_edition : string prop option; [@option]
  private_ip_enabled : bool prop option; [@option]
  project : string prop option; [@option]
  public_ip_enabled : bool prop option; [@option]
  region : string prop option; [@option]
  reserved_range : string prop option; [@option]
  admin_settings : admin_settings list;
      [@default []] [@yojson_drop_default ( = )]
  custom_domain : custom_domain list;
      [@default []] [@yojson_drop_default ( = )]
  deny_maintenance_period : deny_maintenance_period list;
      [@default []] [@yojson_drop_default ( = )]
  encryption_config : encryption_config list;
      [@default []] [@yojson_drop_default ( = )]
  maintenance_window : maintenance_window list;
      [@default []] [@yojson_drop_default ( = )]
  oauth_config : oauth_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  user_metadata : user_metadata list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_looker_instance) -> ()

let yojson_of_google_looker_instance =
  (function
   | {
       consumer_network = v_consumer_network;
       id = v_id;
       name = v_name;
       platform_edition = v_platform_edition;
       private_ip_enabled = v_private_ip_enabled;
       project = v_project;
       public_ip_enabled = v_public_ip_enabled;
       region = v_region;
       reserved_range = v_reserved_range;
       admin_settings = v_admin_settings;
       custom_domain = v_custom_domain;
       deny_maintenance_period = v_deny_maintenance_period;
       encryption_config = v_encryption_config;
       maintenance_window = v_maintenance_window;
       oauth_config = v_oauth_config;
       timeouts = v_timeouts;
       user_metadata = v_user_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_user_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_user_metadata) v_user_metadata
           in
           let bnd = "user_metadata", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_oauth_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oauth_config) v_oauth_config
           in
           let bnd = "oauth_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_deny_maintenance_period then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deny_maintenance_period)
               v_deny_maintenance_period
           in
           let bnd = "deny_maintenance_period", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_custom_domain then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_domain) v_custom_domain
           in
           let bnd = "custom_domain", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_admin_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_admin_settings)
               v_admin_settings
           in
           let bnd = "admin_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reserved_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reserved_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_edition", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_network", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_looker_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_looker_instance

[@@@deriving.end]

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
    ?reserved_range ?(admin_settings = []) ?(custom_domain = [])
    ?(deny_maintenance_period = []) ?(encryption_config = [])
    ?(maintenance_window = []) ?(oauth_config = []) ?timeouts
    ?(user_metadata = []) ~name () : google_looker_instance =
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
  tf_name : string;
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
    ?project ?public_ip_enabled ?region ?reserved_range
    ?(admin_settings = []) ?(custom_domain = [])
    ?(deny_maintenance_period = []) ?(encryption_config = [])
    ?(maintenance_window = []) ?(oauth_config = []) ?timeouts
    ?(user_metadata = []) ~name __id =
  let __type = "google_looker_instance" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?public_ip_enabled ?region ?reserved_range ~admin_settings
           ~custom_domain ~deny_maintenance_period ~encryption_config
           ~maintenance_window ~oauth_config ?timeouts ~user_metadata
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?consumer_network ?id ?platform_edition
    ?private_ip_enabled ?project ?public_ip_enabled ?region
    ?reserved_range ?(admin_settings = []) ?(custom_domain = [])
    ?(deny_maintenance_period = []) ?(encryption_config = [])
    ?(maintenance_window = []) ?(oauth_config = []) ?timeouts
    ?(user_metadata = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?consumer_network ?id ?platform_edition ?private_ip_enabled
      ?project ?public_ip_enabled ?region ?reserved_range
      ~admin_settings ~custom_domain ~deny_maintenance_period
      ~encryption_config ~maintenance_window ~oauth_config ?timeouts
      ~user_metadata ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
