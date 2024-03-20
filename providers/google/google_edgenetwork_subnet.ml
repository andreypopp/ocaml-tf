(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_edgenetwork_subnet = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  ipv4_cidr : string prop list option; [@option]
  ipv6_cidr : string prop list option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  network : string prop;
  project : string prop option; [@option]
  subnet_id : string prop;
  vlan_id : float prop option; [@option]
  zone : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_edgenetwork_subnet) -> ()

let yojson_of_google_edgenetwork_subnet =
  (function
   | {
       description = v_description;
       id = v_id;
       ipv4_cidr = v_ipv4_cidr;
       ipv6_cidr = v_ipv6_cidr;
       labels = v_labels;
       location = v_location;
       network = v_network;
       project = v_project;
       subnet_id = v_subnet_id;
       vlan_id = v_vlan_id;
       zone = v_zone;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         match v_vlan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vlan_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv4_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_edgenetwork_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_edgenetwork_subnet

[@@@deriving.end]

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
