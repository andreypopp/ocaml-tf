(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type mount_options

val mount_options : ?version:string prop -> unit -> mount_options

type on_prem_config

val on_prem_config :
  agent_arns:string prop list -> unit -> on_prem_config

type aws_datasync_location_nfs

val aws_datasync_location_nfs :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mount_options:mount_options list ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  on_prem_config:on_prem_config list ->
  unit ->
  aws_datasync_location_nfs

val yojson_of_aws_datasync_location_nfs :
  aws_datasync_location_nfs -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mount_options:mount_options list ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  on_prem_config:on_prem_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?mount_options:mount_options list ->
  server_hostname:string prop ->
  subdirectory:string prop ->
  on_prem_config:on_prem_config list ->
  string ->
  t Tf_core.resource
