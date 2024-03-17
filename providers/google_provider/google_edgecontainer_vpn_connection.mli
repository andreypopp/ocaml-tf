(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_vpn_connection__timeouts
type google_edgecontainer_vpn_connection__vpc_project

type google_edgecontainer_vpn_connection__details__cloud_vpns = {
  gateway : string;  (** gateway *)
}

type google_edgecontainer_vpn_connection__details__cloud_router = {
  name : string;  (** name *)
}

type google_edgecontainer_vpn_connection__details = {
  cloud_router :
    google_edgecontainer_vpn_connection__details__cloud_router list;
      (** cloud_router *)
  cloud_vpns :
    google_edgecontainer_vpn_connection__details__cloud_vpns list;
      (** cloud_vpns *)
  error : string;  (** error *)
  state : string;  (** state *)
}

type google_edgecontainer_vpn_connection

val google_edgecontainer_vpn_connection :
  ?enable_high_availability:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?nat_gateway_ip:string ->
  ?project:string ->
  ?router:string ->
  ?vpc:string ->
  ?timeouts:google_edgecontainer_vpn_connection__timeouts ->
  cluster:string ->
  location:string ->
  name:string ->
  vpc_project:google_edgecontainer_vpn_connection__vpc_project list ->
  string ->
  unit
