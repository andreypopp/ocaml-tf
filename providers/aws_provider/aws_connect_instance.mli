(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_instance__timeouts
type aws_connect_instance

val aws_connect_instance :
  ?auto_resolve_best_voices_enabled:bool prop ->
  ?contact_flow_logs_enabled:bool prop ->
  ?contact_lens_enabled:bool prop ->
  ?directory_id:string prop ->
  ?early_media_enabled:bool prop ->
  ?id:string prop ->
  ?instance_alias:string prop ->
  ?multi_party_conference_enabled:bool prop ->
  ?timeouts:aws_connect_instance__timeouts ->
  identity_management_type:string prop ->
  inbound_calls_enabled:bool prop ->
  outbound_calls_enabled:bool prop ->
  string ->
  unit
