(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_looker_instance__admin_settings
type google_looker_instance__custom_domain
type google_looker_instance__deny_maintenance_period__end_date
type google_looker_instance__deny_maintenance_period__start_date
type google_looker_instance__deny_maintenance_period__time
type google_looker_instance__deny_maintenance_period
type google_looker_instance__encryption_config
type google_looker_instance__maintenance_window__start_time
type google_looker_instance__maintenance_window
type google_looker_instance__oauth_config
type google_looker_instance__timeouts
type google_looker_instance__user_metadata
type google_looker_instance

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

val google_looker_instance :
  ?consumer_network:string prop ->
  ?id:string prop ->
  ?platform_edition:string prop ->
  ?private_ip_enabled:bool prop ->
  ?project:string prop ->
  ?public_ip_enabled:bool prop ->
  ?region:string prop ->
  ?reserved_range:string prop ->
  ?timeouts:google_looker_instance__timeouts ->
  name:string prop ->
  admin_settings:google_looker_instance__admin_settings list ->
  custom_domain:google_looker_instance__custom_domain list ->
  deny_maintenance_period:
    google_looker_instance__deny_maintenance_period list ->
  encryption_config:google_looker_instance__encryption_config list ->
  maintenance_window:google_looker_instance__maintenance_window list ->
  oauth_config:google_looker_instance__oauth_config list ->
  user_metadata:google_looker_instance__user_metadata list ->
  string ->
  t
