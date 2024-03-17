(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_nfs__mount_options
type aws_datasync_location_nfs__on_prem_config
type aws_datasync_location_nfs

type t = private {
  arn : string prop;
  id : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

val aws_datasync_location_nfs :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  mount_options:aws_datasync_location_nfs__mount_options list ->
  on_prem_config:aws_datasync_location_nfs__on_prem_config list ->
  string ->
  t
