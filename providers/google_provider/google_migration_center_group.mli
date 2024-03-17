(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_migration_center_group__timeouts
type google_migration_center_group

val google_migration_center_group :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_migration_center_group__timeouts ->
  group_id:string prop ->
  location:string prop ->
  string ->
  unit
