(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type firewall_status__sync_states__attachment = {
  endpoint_id : string prop;  (** endpoint_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type firewall_status__sync_states = {
  attachment : firewall_status__sync_states__attachment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** attachment *)
  availability_zone : string prop;  (** availability_zone *)
}

type firewall_status = {
  sync_states : firewall_status__sync_states list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** sync_states *)
}

type encryption_configuration

val encryption_configuration :
  ?key_id:string prop ->
  type_:string prop ->
  unit ->
  encryption_configuration

type subnet_mapping

val subnet_mapping :
  ?ip_address_type:string prop ->
  subnet_id:string prop ->
  unit ->
  subnet_mapping

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_networkfirewall_firewall

val aws_networkfirewall_firewall :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?firewall_policy_change_protection:bool prop ->
  ?id:string prop ->
  ?subnet_change_protection:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?encryption_configuration:encryption_configuration list ->
  ?timeouts:timeouts ->
  firewall_policy_arn:string prop ->
  name:string prop ->
  vpc_id:string prop ->
  subnet_mapping:subnet_mapping list ->
  unit ->
  aws_networkfirewall_firewall

val yojson_of_aws_networkfirewall_firewall :
  aws_networkfirewall_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  delete_protection : bool prop;
  description : string prop;
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop;
  firewall_status : firewall_status list prop;
  id : string prop;
  name : string prop;
  subnet_change_protection : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_token : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?firewall_policy_change_protection:bool prop ->
  ?id:string prop ->
  ?subnet_change_protection:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?encryption_configuration:encryption_configuration list ->
  ?timeouts:timeouts ->
  firewall_policy_arn:string prop ->
  name:string prop ->
  vpc_id:string prop ->
  subnet_mapping:subnet_mapping list ->
  string ->
  t

val make :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?firewall_policy_change_protection:bool prop ->
  ?id:string prop ->
  ?subnet_change_protection:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?encryption_configuration:encryption_configuration list ->
  ?timeouts:timeouts ->
  firewall_policy_arn:string prop ->
  name:string prop ->
  vpc_id:string prop ->
  subnet_mapping:subnet_mapping list ->
  string ->
  t Tf_core.resource
