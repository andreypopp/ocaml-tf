(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_migration_center_group__timeouts
type google_migration_center_group

val google_migration_center_group :
  ?description:string ->
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_migration_center_group__timeouts ->
  group_id:string ->
  location:string ->
  string ->
  unit
