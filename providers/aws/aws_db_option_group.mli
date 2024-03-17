(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_option_group__option__option_settings
type aws_db_option_group__option
type aws_db_option_group__timeouts
type aws_db_option_group

type t = private {
  arn : string prop;
  engine_name : string prop;
  id : string prop;
  major_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  option_group_description : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
