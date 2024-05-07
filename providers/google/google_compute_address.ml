(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_compute_address = {
  address : string prop option; [@option]
  address_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  ip_version : string prop option; [@option]
  ipv6_endpoint_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  network : string prop option; [@option]
  network_tier : string prop option; [@option]
  prefix_length : float prop option; [@option]
  project : string prop option; [@option]
  purpose : string prop option; [@option]
  region : string prop option; [@option]
  subnetwork : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_address) -> ()

let yojson_of_google_compute_address =
  (function
   | {
       address = v_address;
       address_type = v_address_type;
       description = v_description;
       id = v_id;
       ip_version = v_ip_version;
       ipv6_endpoint_type = v_ipv6_endpoint_type;
       labels = v_labels;
       name = v_name;
       network = v_network;
       network_tier = v_network_tier;
       prefix_length = v_prefix_length;
       project = v_project;
       purpose = v_purpose;
       region = v_region;
       subnetwork = v_subnetwork;
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
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purpose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purpose", arg in
             bnd :: bnds
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
         match v_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "prefix_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_ipv6_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_endpoint_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_version", arg in
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
       let bnds =
         match v_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_address

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_address ?address ?address_type ?description ?id
    ?ip_version ?ipv6_endpoint_type ?labels ?network ?network_tier
    ?prefix_length ?project ?purpose ?region ?subnetwork ?timeouts
    ~name () : google_compute_address =
  {
    address;
    address_type;
    description;
    id;
    ip_version;
    ipv6_endpoint_type;
    labels;
    name;
    network;
    network_tier;
    prefix_length;
    project;
    purpose;
    region;
    subnetwork;
    timeouts;
  }

type t = {
  tf_name : string;
  address : string prop;
  address_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_version : string prop;
  ipv6_endpoint_type : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  self_link : string prop;
  subnetwork : string prop;
  terraform_labels : (string * string) list prop;
  users : string list prop;
}

let make ?address ?address_type ?description ?id ?ip_version
    ?ipv6_endpoint_type ?labels ?network ?network_tier ?prefix_length
    ?project ?purpose ?region ?subnetwork ?timeouts ~name __id =
  let __type = "google_compute_address" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       address_type = Prop.computed __type __id "address_type";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ip_version = Prop.computed __type __id "ip_version";
       ipv6_endpoint_type =
         Prop.computed __type __id "ipv6_endpoint_type";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_tier = Prop.computed __type __id "network_tier";
       prefix_length = Prop.computed __type __id "prefix_length";
       project = Prop.computed __type __id "project";
       purpose = Prop.computed __type __id "purpose";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       subnetwork = Prop.computed __type __id "subnetwork";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_address
        (google_compute_address ?address ?address_type ?description
           ?id ?ip_version ?ipv6_endpoint_type ?labels ?network
           ?network_tier ?prefix_length ?project ?purpose ?region
           ?subnetwork ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?address ?address_type ?description ?id
    ?ip_version ?ipv6_endpoint_type ?labels ?network ?network_tier
    ?prefix_length ?project ?purpose ?region ?subnetwork ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?address ?address_type ?description ?id ?ip_version
      ?ipv6_endpoint_type ?labels ?network ?network_tier
      ?prefix_length ?project ?purpose ?region ?subnetwork ?timeouts
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
