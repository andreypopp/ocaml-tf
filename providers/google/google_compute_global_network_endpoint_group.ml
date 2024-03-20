(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_global_network_endpoint_group = {
  default_port : float prop option; [@option]
      (** The default port used if the port number is not specified in the
network endpoint. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network_endpoint_type : string prop;
      (** Type of network endpoints in this network endpoint group. Possible values: [INTERNET_IP_PORT, INTERNET_FQDN_PORT] *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint_group *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_global_network_endpoint_group ?default_port
    ?description ?id ?project ?timeouts ~name ~network_endpoint_type
    () : google_compute_global_network_endpoint_group =
  {
    default_port;
    description;
    id;
    name;
    network_endpoint_type;
    project;
    timeouts;
  }

type t = {
  default_port : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?default_port ?description ?id ?project ?timeouts ~name
    ~network_endpoint_type __id =
  let __type = "google_compute_global_network_endpoint_group" in
  let __attrs =
    ({
       default_port = Prop.computed __type __id "default_port";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_endpoint_type =
         Prop.computed __type __id "network_endpoint_type";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_global_network_endpoint_group
        (google_compute_global_network_endpoint_group ?default_port
           ?description ?id ?project ?timeouts ~name
           ~network_endpoint_type ());
    attrs = __attrs;
  }

let register ?tf_module ?default_port ?description ?id ?project
    ?timeouts ~name ~network_endpoint_type __id =
  let (r : _ Tf_core.resource) =
    make ?default_port ?description ?id ?project ?timeouts ~name
      ~network_endpoint_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
