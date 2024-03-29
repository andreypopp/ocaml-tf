(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type details__cloud_vpns = { gateway : string prop  (** gateway *) }
type details__cloud_router = { name : string prop  (** name *) }

type details = {
  cloud_router : details__cloud_router list;  (** cloud_router *)
  cloud_vpns : details__cloud_vpns list;  (** cloud_vpns *)
  error : string prop;  (** error *)
  state : string prop;  (** state *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_project

val vpc_project : ?project_id:string prop -> unit -> vpc_project

type google_edgecontainer_vpn_connection

val google_edgecontainer_vpn_connection :
  ?enable_high_availability:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  vpc_project:vpc_project list ->
  unit ->
  google_edgecontainer_vpn_connection

val yojson_of_google_edgecontainer_vpn_connection :
  google_edgecontainer_vpn_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster : string prop;
  create_time : string prop;
  details : details list prop;
  effective_labels : (string * string) list prop;
  enable_high_availability : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  nat_gateway_ip : string prop;
  project : string prop;
  router : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  vpc : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_high_availability:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  vpc_project:vpc_project list ->
  string ->
  t

val make :
  ?enable_high_availability:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  vpc_project:vpc_project list ->
  string ->
  t Tf_core.resource
