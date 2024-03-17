(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_core_network_policy_attachment__timeouts
type aws_networkmanager_core_network_policy_attachment

val aws_networkmanager_core_network_policy_attachment :
  ?id:string ->
  ?timeouts:
    aws_networkmanager_core_network_policy_attachment__timeouts ->
  core_network_id:string ->
  policy_document:string ->
  string ->
  unit
