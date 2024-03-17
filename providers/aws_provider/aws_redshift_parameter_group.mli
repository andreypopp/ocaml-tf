(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_parameter_group__parameter
type aws_redshift_parameter_group

type t = private {
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_redshift_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  name:string prop ->
  parameter:aws_redshift_parameter_group__parameter list ->
  string ->
  t
