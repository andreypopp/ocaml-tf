(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type admin_settings

val admin_settings :
  ?allowed_email_domains:string prop list -> unit -> admin_settings

type custom_domain

val custom_domain : ?domain:string prop -> unit -> custom_domain

type deny_maintenance_period__end_date

val deny_maintenance_period__end_date :
  ?day:float prop ->
  ?month:float prop ->
  ?year:float prop ->
  unit ->
  deny_maintenance_period__end_date

type deny_maintenance_period__start_date

val deny_maintenance_period__start_date :
  ?day:float prop ->
  ?month:float prop ->
  ?year:float prop ->
  unit ->
  deny_maintenance_period__start_date

type deny_maintenance_period__time

val deny_maintenance_period__time :
  ?hours:float prop ->
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  unit ->
  deny_maintenance_period__time

type deny_maintenance_period

val deny_maintenance_period :
  end_date:deny_maintenance_period__end_date list ->
  start_date:deny_maintenance_period__start_date list ->
  time:deny_maintenance_period__time list ->
  unit ->
  deny_maintenance_period

type encryption_config

val encryption_config :
  ?kms_key_name:string prop -> unit -> encryption_config

type maintenance_window__start_time

val maintenance_window__start_time :
  ?hours:float prop ->
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  unit ->
  maintenance_window__start_time

type maintenance_window

val maintenance_window :
  day_of_week:string prop ->
  start_time:maintenance_window__start_time list ->
  unit ->
  maintenance_window

type oauth_config

val oauth_config :
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  oauth_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user_metadata

val user_metadata :
  ?additional_developer_user_count:float prop ->
  ?additional_standard_user_count:float prop ->
  ?additional_viewer_user_count:float prop ->
  unit ->
  user_metadata

type google_looker_instance

val google_looker_instance :
  ?consumer_network:string prop ->
  ?id:string prop ->
  ?platform_edition:string prop ->
  ?private_ip_enabled:bool prop ->
  ?project:string prop ->
  ?public_ip_enabled:bool prop ->
  ?region:string prop ->
  ?reserved_range:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  admin_settings:admin_settings list ->
  custom_domain:custom_domain list ->
  deny_maintenance_period:deny_maintenance_period list ->
  encryption_config:encryption_config list ->
  maintenance_window:maintenance_window list ->
  oauth_config:oauth_config list ->
  user_metadata:user_metadata list ->
  unit ->
  google_looker_instance

val yojson_of_google_looker_instance : google_looker_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?consumer_network:string prop ->
  ?id:string prop ->
  ?platform_edition:string prop ->
  ?private_ip_enabled:bool prop ->
  ?project:string prop ->
  ?public_ip_enabled:bool prop ->
  ?region:string prop ->
  ?reserved_range:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  admin_settings:admin_settings list ->
  custom_domain:custom_domain list ->
  deny_maintenance_period:deny_maintenance_period list ->
  encryption_config:encryption_config list ->
  maintenance_window:maintenance_window list ->
  oauth_config:oauth_config list ->
  user_metadata:user_metadata list ->
  string ->
  t

val make :
  ?consumer_network:string prop ->
  ?id:string prop ->
  ?platform_edition:string prop ->
  ?private_ip_enabled:bool prop ->
  ?project:string prop ->
  ?public_ip_enabled:bool prop ->
  ?region:string prop ->
  ?reserved_range:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  admin_settings:admin_settings list ->
  custom_domain:custom_domain list ->
  deny_maintenance_period:deny_maintenance_period list ->
  encryption_config:encryption_config list ->
  maintenance_window:maintenance_window list ->
  oauth_config:oauth_config list ->
  user_metadata:user_metadata list ->
  string ->
  t Tf_core.resource
