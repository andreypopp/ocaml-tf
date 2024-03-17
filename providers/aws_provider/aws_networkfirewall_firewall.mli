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

type t = private {
  arn : string prop;
  delete_protection : bool prop;
  description : string prop;
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop;
  firewall_status :
    aws_networkfirewall_firewall__firewall_status list prop;
  id : string prop;
  name : string prop;
  subnet_change_protection : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_token : string prop;
  vpc_id : string prop;
}

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
  t
