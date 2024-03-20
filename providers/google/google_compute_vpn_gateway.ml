(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_vpn_gateway = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string prop;
      (** The network this VPN gateway is accepting traffic for. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region this gateway should sit in. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_vpn_gateway *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_vpn_gateway ?description ?id ?project ?region
    ?timeouts ~name ~network () : google_compute_vpn_gateway =
  { description; id; name; network; project; region; timeouts }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  gateway_id : float prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?region ?timeouts ~name ~network
    __id =
  let __type = "google_compute_vpn_gateway" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       gateway_id = Prop.computed __type __id "gateway_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_vpn_gateway
        (google_compute_vpn_gateway ?description ?id ?project ?region
           ?timeouts ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?region ?timeouts
    ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?region ?timeouts ~name ~network
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
