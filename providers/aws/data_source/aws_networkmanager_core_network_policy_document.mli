(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attachment_policies__action

val attachment_policies__action :
  ?add_to_network_function_group:string prop ->
  ?association_method:string prop ->
  ?require_acceptance:bool prop ->
  ?segment:string prop ->
  ?tag_value_of_key:string prop ->
  unit ->
  attachment_policies__action

type attachment_policies__conditions

val attachment_policies__conditions :
  ?key:string prop ->
  ?operator:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  attachment_policies__conditions

type attachment_policies

val attachment_policies :
  ?condition_logic:string prop ->
  ?description:string prop ->
  rule_number:float prop ->
  action:attachment_policies__action list ->
  conditions:attachment_policies__conditions list ->
  unit ->
  attachment_policies

type core_network_configuration__edge_locations

val core_network_configuration__edge_locations :
  ?asn:string prop ->
  ?inside_cidr_blocks:string prop list ->
  location:string prop ->
  unit ->
  core_network_configuration__edge_locations

type core_network_configuration

val core_network_configuration :
  ?inside_cidr_blocks:string prop list ->
  ?vpn_ecmp_support:bool prop ->
  asn_ranges:string prop list ->
  edge_locations:core_network_configuration__edge_locations list ->
  unit ->
  core_network_configuration

type network_function_groups

val network_function_groups :
  ?description:string prop ->
  name:string prop ->
  require_attachment_acceptance:bool prop ->
  unit ->
  network_function_groups

type segment_actions__via__with_edge_override

val segment_actions__via__with_edge_override :
  ?edge_sets:string prop list ->
  ?use_edge:string prop ->
  unit ->
  segment_actions__via__with_edge_override

type segment_actions__via

val segment_actions__via :
  ?network_function_groups:string prop list ->
  ?with_edge_override:segment_actions__via__with_edge_override list ->
  unit ->
  segment_actions__via

type segment_actions__when_sent_to

val segment_actions__when_sent_to :
  ?segments:string prop list -> unit -> segment_actions__when_sent_to

type segment_actions

val segment_actions :
  ?description:string prop ->
  ?destination_cidr_blocks:string prop list ->
  ?destinations:string prop list ->
  ?mode:string prop ->
  ?share_with:string prop list ->
  ?share_with_except:string prop list ->
  ?via:segment_actions__via list ->
  ?when_sent_to:segment_actions__when_sent_to list ->
  action:string prop ->
  segment:string prop ->
  unit ->
  segment_actions

type segments

val segments :
  ?allow_filter:string prop list ->
  ?deny_filter:string prop list ->
  ?description:string prop ->
  ?edge_locations:string prop list ->
  ?isolate_attachments:bool prop ->
  ?require_attachment_acceptance:bool prop ->
  name:string prop ->
  unit ->
  segments

type aws_networkmanager_core_network_policy_document

val aws_networkmanager_core_network_policy_document :
  ?id:string prop ->
  ?version:string prop ->
  ?attachment_policies:attachment_policies list ->
  ?network_function_groups:network_function_groups list ->
  ?segment_actions:segment_actions list ->
  core_network_configuration:core_network_configuration list ->
  segments:segments list ->
  unit ->
  aws_networkmanager_core_network_policy_document

val yojson_of_aws_networkmanager_core_network_policy_document :
  aws_networkmanager_core_network_policy_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  json : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:string prop ->
  ?attachment_policies:attachment_policies list ->
  ?network_function_groups:network_function_groups list ->
  ?segment_actions:segment_actions list ->
  core_network_configuration:core_network_configuration list ->
  segments:segments list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:string prop ->
  ?attachment_policies:attachment_policies list ->
  ?network_function_groups:network_function_groups list ->
  ?segment_actions:segment_actions list ->
  core_network_configuration:core_network_configuration list ->
  segments:segments list ->
  string ->
  t Tf_core.resource
