(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_org_policy_custom_constraint__timeouts
type google_org_policy_custom_constraint

type t = private {
  action_type : string prop;
  condition : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  method_types : string list prop;
  name : string prop;
  parent : string prop;
  resource_types : string list prop;
  update_time : string prop;
}

val google_org_policy_custom_constraint :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:google_org_policy_custom_constraint__timeouts ->
  action_type:string prop ->
  condition:string prop ->
  method_types:string prop list ->
  name:string prop ->
  parent:string prop ->
  resource_types:string prop list ->
  string ->
  t
