(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_multiplex_program__multiplex_program_settings__service_descriptor

type aws_medialive_multiplex_program__multiplex_program_settings__video_settings__statmux_settings

type aws_medialive_multiplex_program__multiplex_program_settings__video_settings

type aws_medialive_multiplex_program__multiplex_program_settings
type aws_medialive_multiplex_program

val aws_medialive_multiplex_program :
  multiplex_id:string prop ->
  program_name:string prop ->
  multiplex_program_settings:
    aws_medialive_multiplex_program__multiplex_program_settings list ->
  string ->
  unit
