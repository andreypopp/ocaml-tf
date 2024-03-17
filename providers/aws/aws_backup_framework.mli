(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_framework__control__input_parameter
type aws_backup_framework__control__scope
type aws_backup_framework__control
type aws_backup_framework__timeouts
type aws_backup_framework

type t = private {
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_backup_framework :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_backup_framework__timeouts ->
  name:string prop ->
  control:aws_backup_framework__control list ->
  string ->
  t
