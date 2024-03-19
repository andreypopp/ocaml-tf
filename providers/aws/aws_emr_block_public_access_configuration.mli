(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type permitted_public_security_group_rule_range

val permitted_public_security_group_rule_range :
  max_range:float prop ->
  min_range:float prop ->
  unit ->
  permitted_public_security_group_rule_range

type aws_emr_block_public_access_configuration

val aws_emr_block_public_access_configuration :
  ?id:string prop ->
  block_public_security_group_rules:bool prop ->
  permitted_public_security_group_rule_range:
    permitted_public_security_group_rule_range list ->
  unit ->
  aws_emr_block_public_access_configuration

val yojson_of_aws_emr_block_public_access_configuration :
  aws_emr_block_public_access_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  block_public_security_group_rules : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  block_public_security_group_rules:bool prop ->
  permitted_public_security_group_rule_range:
    permitted_public_security_group_rule_range list ->
  string ->
  t
