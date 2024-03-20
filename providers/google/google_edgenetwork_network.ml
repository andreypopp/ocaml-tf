(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_edgenetwork_network = {
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource. *)
  location : string prop;
      (** The Google Cloud region to which the target Distributed Cloud Edge zone belongs. *)
  mtu : float prop option; [@option]
      (** IP (L3) MTU value of the network. Default value is '1500'. Possible values are: '1500', '9000'. *)
  network_id : string prop;
      (** A unique ID that identifies this network. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop;
      (** The name of the target Distributed Cloud Edge zone. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_edgenetwork_network *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_edgenetwork_network ?description ?id ?labels ?mtu ?project
    ?timeouts ~location ~network_id ~zone () :
    google_edgenetwork_network =
  {
    description;
    id;
    labels;
    location;
    mtu;
    network_id;
    project;
    zone;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  mtu : float prop;
  name : string prop;
  network_id : string prop;
  project : string prop;
  update_time : string prop;
  zone : string prop;
}

let make ?description ?id ?labels ?mtu ?project ?timeouts ~location
    ~network_id ~zone __id =
  let __type = "google_edgenetwork_network" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       network_id = Prop.computed __type __id "network_id";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgenetwork_network
        (google_edgenetwork_network ?description ?id ?labels ?mtu
           ?project ?timeouts ~location ~network_id ~zone ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?mtu ?project
    ?timeouts ~location ~network_id ~zone __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?mtu ?project ?timeouts ~location
      ~network_id ~zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
