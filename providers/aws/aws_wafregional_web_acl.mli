(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_action

val default_action : type_:string prop -> unit -> default_action

type logging_configuration__redacted_fields__field_to_match

val logging_configuration__redacted_fields__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  logging_configuration__redacted_fields__field_to_match

type logging_configuration__redacted_fields

val logging_configuration__redacted_fields :
  field_to_match:
    logging_configuration__redacted_fields__field_to_match list ->
  unit ->
  logging_configuration__redacted_fields

type logging_configuration

val logging_configuration :
  ?redacted_fields:logging_configuration__redacted_fields list ->
  log_destination:string prop ->
  unit ->
  logging_configuration

type rule__action

val rule__action : type_:string prop -> unit -> rule__action

type rule__override_action

val rule__override_action :
  type_:string prop -> unit -> rule__override_action

type rule

val rule :
  ?type_:string prop ->
  ?action:rule__action list ->
  ?override_action:rule__override_action list ->
  priority:float prop ->
  rule_id:string prop ->
  unit ->
  rule

type aws_wafregional_web_acl

val aws_wafregional_web_acl :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?logging_configuration:logging_configuration list ->
  metric_name:string prop ->
  name:string prop ->
  default_action:default_action list ->
  rule:rule list ->
  unit ->
  aws_wafregional_web_acl

val yojson_of_aws_wafregional_web_acl :
  aws_wafregional_web_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?logging_configuration:logging_configuration list ->
  metric_name:string prop ->
  name:string prop ->
  default_action:default_action list ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?logging_configuration:logging_configuration list ->
  metric_name:string prop ->
  name:string prop ->
  default_action:default_action list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
