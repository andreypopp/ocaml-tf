(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkfirewall_firewall__encryption_configuration
type aws_networkfirewall_firewall__subnet_mapping
type aws_networkfirewall_firewall__timeouts

type aws_networkfirewall_firewall__firewall_status__sync_states__attachment = {
  endpoint_id : string prop;  (** endpoint_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type aws_networkfirewall_firewall__firewall_status__sync_states = {
  attachment :
    aws_networkfirewall_firewall__firewall_status__sync_states__attachment
    list;
      (** attachment *)
  availability_zone : string prop;  (** availability_zone *)
}

type aws_networkfirewall_firewall__firewall_status = {
  sync_states :
    aws_networkfirewall_firewall__firewall_status__sync_states list;
      (** sync_states *)
}

type aws_networkfirewall_firewall

val aws_networkfirewall_firewall :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?firewall_policy_change_protection:bool prop ->
  ?id:string prop ->
  ?subnet_change_protection:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkfirewall_firewall__timeouts ->
  firewall_policy_arn:string prop ->
  name:string prop ->
  vpc_id:string prop ->
  encryption_configuration:
    aws_networkfirewall_firewall__encryption_configuration list ->
  subnet_mapping:aws_networkfirewall_firewall__subnet_mapping list ->
  string ->
  unit
