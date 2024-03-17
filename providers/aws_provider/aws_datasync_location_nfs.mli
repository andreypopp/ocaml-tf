(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_nfs__mount_options
type aws_datasync_location_nfs__on_prem_config
type aws_datasync_location_nfs

val aws_datasync_location_nfs :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  server_hostname:string ->
  subdirectory:string ->
  mount_options:aws_datasync_location_nfs__mount_options list ->
  on_prem_config:aws_datasync_location_nfs__on_prem_config list ->
  string ->
  unit
