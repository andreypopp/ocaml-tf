(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkfirewall_firewall__encryption_configuration
type aws_networkfirewall_firewall__subnet_mapping
type aws_networkfirewall_firewall__timeouts

type aws_networkfirewall_firewall__firewall_status__sync_states__attachment = {
  endpoint_id : string;  (** endpoint_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall__firewall_status__sync_states = {
  attachment :
    aws_networkfirewall_firewall__firewall_status__sync_states__attachment
    list;
      (** attachment *)
  availability_zone : string;  (** availability_zone *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall__firewall_status = {
  sync_states :
    aws_networkfirewall_firewall__firewall_status__sync_states list;
      (** sync_states *)
}
[@@deriving yojson_of]

type aws_networkfirewall_firewall

val aws_networkfirewall_firewall :
  ?delete_protection:bool ->
  ?description:string ->
  ?firewall_policy_change_protection:bool ->
  ?subnet_change_protection:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_networkfirewall_firewall__timeouts ->
  firewall_policy_arn:string ->
  name:string ->
  vpc_id:string ->
  encryption_configuration:
    aws_networkfirewall_firewall__encryption_configuration list ->
  subnet_mapping:aws_networkfirewall_firewall__subnet_mapping list ->
  string ->
  unit
