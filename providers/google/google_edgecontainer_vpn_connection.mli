(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type details__cloud_vpns = { gateway : string prop  (** gateway *) }
type details__cloud_router = { name : string prop  (** name *) }

type details = {
  cloud_router : details__cloud_router list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cloud_router *)
  cloud_vpns : details__cloud_vpns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cloud_vpns *)
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
  ?labels:string prop Tf_core.assoc ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:timeouts ->
  ?vpc_project:vpc_project list ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_edgecontainer_vpn_connection

val yojson_of_google_edgecontainer_vpn_connection :
  google_edgecontainer_vpn_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster : string prop;
  create_time : string prop;
  details : details list prop;
  effective_labels : string Tf_core.assoc prop;
  enable_high_availability : bool prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  nat_gateway_ip : string prop;
  project : string prop;
  router : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
  vpc : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_high_availability:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:timeouts ->
  ?vpc_project:vpc_project list ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?enable_high_availability:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:timeouts ->
  ?vpc_project:vpc_project list ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
