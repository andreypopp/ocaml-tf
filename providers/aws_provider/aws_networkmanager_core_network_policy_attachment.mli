(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_core_network_policy_attachment__timeouts
type aws_networkmanager_core_network_policy_attachment

type t = private {
  core_network_id : string prop;
  id : string prop;
  policy_document : string prop;
  state : string prop;
}

val aws_networkmanager_core_network_policy_attachment :
  ?id:string prop ->
  ?timeouts:
    aws_networkmanager_core_network_policy_attachment__timeouts ->
  core_network_id:string prop ->
  policy_document:string prop ->
  string ->
  t
