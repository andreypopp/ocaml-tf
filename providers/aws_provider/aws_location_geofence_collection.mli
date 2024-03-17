(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_geofence_collection__timeouts
type aws_location_geofence_collection

val aws_location_geofence_collection :
  ?description:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_location_geofence_collection__timeouts ->
  collection_name:string ->
  string ->
  unit
