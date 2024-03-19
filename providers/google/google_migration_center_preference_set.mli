(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series

val virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series :
  ?code:string prop ->
  unit ->
  virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series

type virtual_machine_preferences__compute_engine_preferences__machine_preferences

val virtual_machine_preferences__compute_engine_preferences__machine_preferences :
  allowed_machine_series:
    virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    list ->
  unit ->
  virtual_machine_preferences__compute_engine_preferences__machine_preferences

type virtual_machine_preferences__compute_engine_preferences

val virtual_machine_preferences__compute_engine_preferences :
  ?license_type:string prop ->
  machine_preferences:
    virtual_machine_preferences__compute_engine_preferences__machine_preferences
    list ->
  unit ->
  virtual_machine_preferences__compute_engine_preferences

type virtual_machine_preferences__region_preferences

val virtual_machine_preferences__region_preferences :
  ?preferred_regions:string prop list ->
  unit ->
  virtual_machine_preferences__region_preferences

type virtual_machine_preferences__sole_tenancy_preferences__node_types

val virtual_machine_preferences__sole_tenancy_preferences__node_types :
  ?node_name:string prop ->
  unit ->
  virtual_machine_preferences__sole_tenancy_preferences__node_types

type virtual_machine_preferences__sole_tenancy_preferences

val virtual_machine_preferences__sole_tenancy_preferences :
  ?commitment_plan:string prop ->
  ?cpu_overcommit_ratio:float prop ->
  ?host_maintenance_policy:string prop ->
  node_types:
    virtual_machine_preferences__sole_tenancy_preferences__node_types
    list ->
  unit ->
  virtual_machine_preferences__sole_tenancy_preferences

type virtual_machine_preferences__vmware_engine_preferences

val virtual_machine_preferences__vmware_engine_preferences :
  ?commitment_plan:string prop ->
  ?cpu_overcommit_ratio:float prop ->
  ?memory_overcommit_ratio:float prop ->
  ?storage_deduplication_compression_ratio:float prop ->
  unit ->
  virtual_machine_preferences__vmware_engine_preferences

type virtual_machine_preferences

val virtual_machine_preferences :
  ?commitment_plan:string prop ->
  ?sizing_optimization_strategy:string prop ->
  ?target_product:string prop ->
  compute_engine_preferences:
    virtual_machine_preferences__compute_engine_preferences list ->
  region_preferences:
    virtual_machine_preferences__region_preferences list ->
  sole_tenancy_preferences:
    virtual_machine_preferences__sole_tenancy_preferences list ->
  vmware_engine_preferences:
    virtual_machine_preferences__vmware_engine_preferences list ->
  unit ->
  virtual_machine_preferences

type google_migration_center_preference_set

val google_migration_center_preference_set :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  preference_set_id:string prop ->
  virtual_machine_preferences:virtual_machine_preferences list ->
  unit ->
  google_migration_center_preference_set

val yojson_of_google_migration_center_preference_set :
  google_migration_center_preference_set -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  preference_set_id:string prop ->
  virtual_machine_preferences:virtual_machine_preferences list ->
  string ->
  t
