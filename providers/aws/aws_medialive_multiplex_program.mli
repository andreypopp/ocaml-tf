(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type multiplex_program_settings__service_descriptor

val multiplex_program_settings__service_descriptor :
  provider_name:string prop ->
  service_name:string prop ->
  unit ->
  multiplex_program_settings__service_descriptor

type multiplex_program_settings__video_settings__statmux_settings

val multiplex_program_settings__video_settings__statmux_settings :
  ?maximum_bitrate:float prop ->
  ?minimum_bitrate:float prop ->
  ?priority:float prop ->
  unit ->
  multiplex_program_settings__video_settings__statmux_settings

type multiplex_program_settings__video_settings

val multiplex_program_settings__video_settings :
  ?constant_bitrate:float prop ->
  ?statmux_settings:
    multiplex_program_settings__video_settings__statmux_settings list ->
  unit ->
  multiplex_program_settings__video_settings

type multiplex_program_settings

val multiplex_program_settings :
  ?service_descriptor:
    multiplex_program_settings__service_descriptor list ->
  ?video_settings:multiplex_program_settings__video_settings list ->
  preferred_channel_pipeline:string prop ->
  program_number:float prop ->
  unit ->
  multiplex_program_settings

type aws_medialive_multiplex_program

val aws_medialive_multiplex_program :
  ?multiplex_program_settings:multiplex_program_settings list ->
  multiplex_id:string prop ->
  program_name:string prop ->
  unit ->
  aws_medialive_multiplex_program

val yojson_of_aws_medialive_multiplex_program :
  aws_medialive_multiplex_program -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  multiplex_id : string prop;
  program_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?multiplex_program_settings:multiplex_program_settings list ->
  multiplex_id:string prop ->
  program_name:string prop ->
  string ->
  t

val make :
  ?multiplex_program_settings:multiplex_program_settings list ->
  multiplex_id:string prop ->
  program_name:string prop ->
  string ->
  t Tf_core.resource
