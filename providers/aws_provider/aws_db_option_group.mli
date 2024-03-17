(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_option_group__option__option_settings
type aws_db_option_group__option
type aws_db_option_group__timeouts
type aws_db_option_group

val aws_db_option_group :
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?option_group_description:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_db_option_group__timeouts ->
  engine_name:string ->
  major_engine_version:string ->
  option:aws_db_option_group__option list ->
  string ->
  unit
