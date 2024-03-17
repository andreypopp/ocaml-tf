(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_environment__monitor
type aws_appconfig_environment

type t = private {
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_appconfig_environment :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  name:string prop ->
  monitor:aws_appconfig_environment__monitor list ->
  string ->
  t
