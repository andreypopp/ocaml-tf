(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_transfer_agent_pool__bandwidth_limit
type google_storage_transfer_agent_pool__timeouts
type google_storage_transfer_agent_pool

val google_storage_transfer_agent_pool :
  ?display_name:string ->
  ?timeouts:google_storage_transfer_agent_pool__timeouts ->
  name:string ->
  bandwidth_limit:
    google_storage_transfer_agent_pool__bandwidth_limit list ->
  string ->
  unit
