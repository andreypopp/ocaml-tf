(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_configuration

val vpc_configuration :
  ?security_groups:string prop list ->
  role_arn:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_configuration

type aws_iot_topic_rule_destination

val aws_iot_topic_rule_destination :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  vpc_configuration:vpc_configuration list ->
  unit ->
  aws_iot_topic_rule_destination

val yojson_of_aws_iot_topic_rule_destination :
  aws_iot_topic_rule_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  enabled : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  vpc_configuration:vpc_configuration list ->
  string ->
  t
