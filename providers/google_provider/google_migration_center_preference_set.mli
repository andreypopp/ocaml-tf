(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_migration_center_preference_set__timeouts

type google_migration_center_preference_set__virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series

type google_migration_center_preference_set__virtual_machine_preferences__compute_engine_preferences__machine_preferences

type google_migration_center_preference_set__virtual_machine_preferences__compute_engine_preferences

type google_migration_center_preference_set__virtual_machine_preferences__region_preferences

type google_migration_center_preference_set__virtual_machine_preferences__sole_tenancy_preferences__node_types

type google_migration_center_preference_set__virtual_machine_preferences__sole_tenancy_preferences

type google_migration_center_preference_set__virtual_machine_preferences__vmware_engine_preferences

type google_migration_center_preference_set__virtual_machine_preferences

type google_migration_center_preference_set

type t = private {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  preference_set_id : string prop;
  project : string prop;
  update_time : string prop;
}

val google_migration_center_preference_set :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_migration_center_preference_set__timeouts ->
  location:string prop ->
  preference_set_id:string prop ->
  virtual_machine_preferences:
    google_migration_center_preference_set__virtual_machine_preferences
    list ->
  string ->
  t
