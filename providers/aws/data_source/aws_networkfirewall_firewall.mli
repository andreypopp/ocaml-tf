(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration = {
  key_id : string prop;  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type firewall_status__sync_states__attachment = {
  endpoint_id : string prop;  (** endpoint_id *)
  status : string prop;  (** status *)
  subnet_id : string prop;  (** subnet_id *)
}

type firewall_status__sync_states = {
  attachment : firewall_status__sync_states__attachment list;
      (** attachment *)
  availability_zone : string prop;  (** availability_zone *)
}

type firewall_status__capacity_usage_summary__cidrs__ip_set_references = {
  resolved_cidr_count : float prop;  (** resolved_cidr_count *)
}

type firewall_status__capacity_usage_summary__cidrs = {
  available_cidr_count : float prop;  (** available_cidr_count *)
  ip_set_references :
    firewall_status__capacity_usage_summary__cidrs__ip_set_references
    list;
      (** ip_set_references *)
  utilized_cidr_count : float prop;  (** utilized_cidr_count *)
}

type firewall_status__capacity_usage_summary = {
  cidrs : firewall_status__capacity_usage_summary__cidrs list;
      (** cidrs *)
}

type firewall_status = {
  capacity_usage_summary :
    firewall_status__capacity_usage_summary list;
      (** capacity_usage_summary *)
  configuration_sync_state_summary : string prop;
      (** configuration_sync_state_summary *)
  status : string prop;  (** status *)
  sync_states : firewall_status__sync_states list;  (** sync_states *)
}

type subnet_mapping = { subnet_id : string prop  (** subnet_id *) }
type aws_networkfirewall_firewall

val aws_networkfirewall_firewall :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
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
  encryption_configuration : encryption_configuration list prop;
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop;
  firewall_status : firewall_status list prop;
  id : string prop;
  name : string prop;
  subnet_change_protection : bool prop;
  subnet_mapping : subnet_mapping list prop;
  tags : (string * string) list prop;
  update_token : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
