(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_global_network_endpoint = {
  fqdn : string prop option; [@option]
      (** Fully qualified domain name of network endpoint.
This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT. *)
  global_network_endpoint_group : string prop;
      (** The global network endpoint group this endpoint is part of. *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]
      (** IPv4 address external endpoint. *)
  port : float prop;  (** Port number of the external endpoint. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_global_network_endpoint ?fqdn ?id ?ip_address
    ?project ?timeouts ~global_network_endpoint_group ~port () :
    google_compute_global_network_endpoint =
  {
    fqdn;
    global_network_endpoint_group;
    id;
    ip_address;
    port;
    project;
    timeouts;
  }

type t = {
  fqdn : string prop;
  global_network_endpoint_group : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
}

let make ?fqdn ?id ?ip_address ?project ?timeouts
    ~global_network_endpoint_group ~port __id =
  let __type = "google_compute_global_network_endpoint" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       global_network_endpoint_group =
         Prop.computed __type __id "global_network_endpoint_group";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_global_network_endpoint
        (google_compute_global_network_endpoint ?fqdn ?id ?ip_address
           ?project ?timeouts ~global_network_endpoint_group ~port ());
    attrs = __attrs;
  }

let register ?tf_module ?fqdn ?id ?ip_address ?project ?timeouts
    ~global_network_endpoint_group ~port __id =
  let (r : _ Tf_core.resource) =
    make ?fqdn ?id ?ip_address ?project ?timeouts
      ~global_network_endpoint_group ~port __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
