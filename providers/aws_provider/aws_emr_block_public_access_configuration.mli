(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_block_public_access_configuration__permitted_public_security_group_rule_range

type aws_emr_block_public_access_configuration

val aws_emr_block_public_access_configuration :
  ?id:string ->
  block_public_security_group_rules:bool ->
  permitted_public_security_group_rule_range:
    aws_emr_block_public_access_configuration__permitted_public_security_group_rule_range
    list ->
  string ->
  unit
