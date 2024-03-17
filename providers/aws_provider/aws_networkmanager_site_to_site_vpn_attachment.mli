(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_site_to_site_vpn_attachment__timeouts
type aws_networkmanager_site_to_site_vpn_attachment

val aws_networkmanager_site_to_site_vpn_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_site_to_site_vpn_attachment__timeouts ->
  core_network_id:string prop ->
  vpn_connection_arn:string prop ->
  string ->
  unit
