(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_transfer_agent_pool__bandwidth_limit
type google_storage_transfer_agent_pool__timeouts
type google_storage_transfer_agent_pool

type t = private {
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
}

val google_storage_transfer_agent_pool :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_storage_transfer_agent_pool__timeouts ->
  name:string prop ->
  bandwidth_limit:
    google_storage_transfer_agent_pool__bandwidth_limit list ->
  string ->
  t
