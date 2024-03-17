(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_environment__setting

type aws_elastic_beanstalk_environment__all_settings = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string;  (** resource *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_elastic_beanstalk_environment

val aws_elastic_beanstalk_environment :
  ?description:string ->
  ?poll_interval:string ->
  ?tags:(string * string) list ->
  ?template_name:string ->
  ?tier:string ->
  ?wait_for_ready_timeout:string ->
  application:string ->
  name:string ->
  setting:aws_elastic_beanstalk_environment__setting list ->
  string ->
  unit
