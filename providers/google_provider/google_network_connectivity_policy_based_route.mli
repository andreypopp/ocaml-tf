(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_policy_based_route__filter

type google_network_connectivity_policy_based_route__interconnect_attachment

type google_network_connectivity_policy_based_route__timeouts
type google_network_connectivity_policy_based_route__virtual_machine

type google_network_connectivity_policy_based_route__warnings = {
  code : string;  (** code *)
  data : (string * string) list;  (** data *)
  warning_message : string;  (** warning_message *)
}
[@@deriving yojson_of]

type google_network_connectivity_policy_based_route

val google_network_connectivity_policy_based_route :
  ?description:string ->
  ?labels:(string * string) list ->
  ?next_hop_ilb_ip:string ->
  ?next_hop_other_routes:string ->
  ?priority:float ->
  ?timeouts:google_network_connectivity_policy_based_route__timeouts ->
  name:string ->
  network:string ->
  filter:google_network_connectivity_policy_based_route__filter list ->
  interconnect_attachment:
    google_network_connectivity_policy_based_route__interconnect_attachment
    list ->
  virtual_machine:
    google_network_connectivity_policy_based_route__virtual_machine
    list ->
  string ->
  unit
