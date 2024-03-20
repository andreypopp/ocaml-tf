(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_edgenetwork_subnet = {
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  ipv4_cidr : string prop list option; [@option]
      (** The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. *)
  ipv6_cidr : string prop list option; [@option]
      (** The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource. *)
  location : string prop;
      (** The Google Cloud region to which the target Distributed Cloud Edge zone belongs. *)
  network : string prop;
      (** The ID of the network to which this router belongs.
Must be of the form: 'projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}' *)
  project : string prop option; [@option]  (** project *)
  subnet_id : string prop;
      (** A unique ID that identifies this subnet. *)
  vlan_id : float prop option; [@option]
      (** VLAN ID for this subnetwork. If not specified, one is assigned automatically. *)
  zone : string prop;
      (** The name of the target Distributed Cloud Edge zone. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_edgenetwork_subnet *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_edgenetwork_subnet ?description ?id ?ipv4_cidr ?ipv6_cidr
    ?labels ?project ?vlan_id ?timeouts ~location ~network ~subnet_id
    ~zone () : google_edgenetwork_subnet =
  {
    description;
    id;
    ipv4_cidr;
    ipv6_cidr;
    labels;
    location;
    network;
    project;
    subnet_id;
    vlan_id;
    zone;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  ipv4_cidr : string list prop;
  ipv6_cidr : string list prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  state : string prop;
  subnet_id : string prop;
  update_time : string prop;
  vlan_id : float prop;
  zone : string prop;
}

let make ?description ?id ?ipv4_cidr ?ipv6_cidr ?labels ?project
    ?vlan_id ?timeouts ~location ~network ~subnet_id ~zone __id =
  let __type = "google_edgenetwork_subnet" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ipv4_cidr = Prop.computed __type __id "ipv4_cidr";
       ipv6_cidr = Prop.computed __type __id "ipv6_cidr";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       subnet_id = Prop.computed __type __id "subnet_id";
       update_time = Prop.computed __type __id "update_time";
       vlan_id = Prop.computed __type __id "vlan_id";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgenetwork_subnet
        (google_edgenetwork_subnet ?description ?id ?ipv4_cidr
           ?ipv6_cidr ?labels ?project ?vlan_id ?timeouts ~location
           ~network ~subnet_id ~zone ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ipv4_cidr ?ipv6_cidr
    ?labels ?project ?vlan_id ?timeouts ~location ~network ~subnet_id
    ~zone __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ipv4_cidr ?ipv6_cidr ?labels ?project
      ?vlan_id ?timeouts ~location ~network ~subnet_id ~zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
