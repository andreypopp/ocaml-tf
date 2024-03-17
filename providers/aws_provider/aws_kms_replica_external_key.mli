(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_replica_external_key

type t = private {
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enabled : bool prop;
  expiration_model : string prop;
  id : string prop;
  key_id : string prop;
  key_material_base64 : string prop;
  key_state : string prop;
  key_usage : string prop;
  policy : string prop;
  primary_key_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_to : string prop;
}

val aws_kms_replica_external_key :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?key_material_base64:string prop ->
  ?policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?valid_to:string prop ->
  primary_key_arn:string prop ->
  string ->
  t
