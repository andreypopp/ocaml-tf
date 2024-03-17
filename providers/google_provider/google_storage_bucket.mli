(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket__autoclass
type google_storage_bucket__cors
type google_storage_bucket__custom_placement_config
type google_storage_bucket__encryption
type google_storage_bucket__lifecycle_rule__action
type google_storage_bucket__lifecycle_rule__condition
type google_storage_bucket__lifecycle_rule
type google_storage_bucket__logging
type google_storage_bucket__retention_policy
type google_storage_bucket__timeouts
type google_storage_bucket__versioning
type google_storage_bucket__website
type google_storage_bucket

val google_storage_bucket :
  ?default_event_based_hold:bool prop ->
  ?enable_object_retention:bool prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?public_access_prevention:string prop ->
  ?requester_pays:bool prop ->
  ?rpo:string prop ->
  ?storage_class:string prop ->
  ?uniform_bucket_level_access:bool prop ->
  ?timeouts:google_storage_bucket__timeouts ->
  location:string prop ->
  name:string prop ->
  autoclass:google_storage_bucket__autoclass list ->
  cors:google_storage_bucket__cors list ->
  custom_placement_config:
    google_storage_bucket__custom_placement_config list ->
  encryption:google_storage_bucket__encryption list ->
  lifecycle_rule:google_storage_bucket__lifecycle_rule list ->
  logging:google_storage_bucket__logging list ->
  retention_policy:google_storage_bucket__retention_policy list ->
  versioning:google_storage_bucket__versioning list ->
  website:google_storage_bucket__website list ->
  string ->
  unit
