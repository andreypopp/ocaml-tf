(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_instance__timeouts
type aws_connect_instance

val aws_connect_instance :
  ?auto_resolve_best_voices_enabled:bool ->
  ?contact_flow_logs_enabled:bool ->
  ?contact_lens_enabled:bool ->
  ?directory_id:string ->
  ?early_media_enabled:bool ->
  ?id:string ->
  ?instance_alias:string ->
  ?multi_party_conference_enabled:bool ->
  ?timeouts:aws_connect_instance__timeouts ->
  identity_management_type:string ->
  inbound_calls_enabled:bool ->
  outbound_calls_enabled:bool ->
  string ->
  unit
