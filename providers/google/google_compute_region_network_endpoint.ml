(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_network_endpoint = {
  fqdn : string prop option; [@option]
      (** Fully qualified domain name of network endpoint.

This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]
      (** IPv4 address external endpoint.

This can only be specified when network_endpoint_type of the NEG is INTERNET_IP_PORT. *)
  port : float prop;  (** Port number of network endpoint. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where the containing network endpoint group is located. *)
  region_network_endpoint_group : string prop;
      (** The network endpoint group this endpoint is part of. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_network_endpoint *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_network_endpoint ?fqdn ?id ?ip_address
    ?project ?region ?timeouts ~port ~region_network_endpoint_group
    () : google_compute_region_network_endpoint =
  {
    fqdn;
    id;
    ip_address;
    port;
    project;
    region;
    region_network_endpoint_group;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  region_network_endpoint_group : string prop;
}

let make ?fqdn ?id ?ip_address ?project ?region ?timeouts ~port
    ~region_network_endpoint_group __id =
  let __type = "google_compute_region_network_endpoint" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       region_network_endpoint_group =
         Prop.computed __type __id "region_network_endpoint_group";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_network_endpoint
        (google_compute_region_network_endpoint ?fqdn ?id ?ip_address
           ?project ?region ?timeouts ~port
           ~region_network_endpoint_group ());
    attrs = __attrs;
  }

let register ?tf_module ?fqdn ?id ?ip_address ?project ?region
    ?timeouts ~port ~region_network_endpoint_group __id =
  let (r : _ Tf_core.resource) =
    make ?fqdn ?id ?ip_address ?project ?region ?timeouts ~port
      ~region_network_endpoint_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
