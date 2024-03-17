(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_option_group__option__option_settings
type aws_db_option_group__option
type aws_db_option_group__timeouts
type aws_db_option_group

val aws_db_option_group :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?option_group_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_db_option_group__timeouts ->
  engine_name:string prop ->
  major_engine_version:string prop ->
  option:aws_db_option_group__option list ->
  string ->
  unit
