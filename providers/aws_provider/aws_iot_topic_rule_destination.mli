(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_topic_rule_destination__timeouts
type aws_iot_topic_rule_destination__vpc_configuration
type aws_iot_topic_rule_destination

val aws_iot_topic_rule_destination :
  ?enabled:bool ->
  ?timeouts:aws_iot_topic_rule_destination__timeouts ->
  vpc_configuration:
    aws_iot_topic_rule_destination__vpc_configuration list ->
  string ->
  unit
