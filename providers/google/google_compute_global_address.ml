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

type google_compute_global_address = {
  address : string prop option; [@option]
  address_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  ip_version : string prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  prefix_length : float prop option; [@option]
  project : string prop option; [@option]
  purpose : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_global_address) -> ()

let yojson_of_google_compute_global_address =
  (function
   | {
       address = v_address;
       address_type = v_address_type;
       description = v_description;
       id = v_id;
       ip_version = v_ip_version;
       name = v_name;
       network = v_network;
       prefix_length = v_prefix_length;
       project = v_project;
       purpose = v_purpose;
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
    : google_compute_global_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_global_address

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_global_address ?address ?address_type ?description
    ?id ?ip_version ?network ?prefix_length ?project ?purpose
    ?timeouts ~name () : google_compute_global_address =
  {
    address;
    address_type;
    description;
    id;
    ip_version;
    name;
    network;
    prefix_length;
    project;
    purpose;
    timeouts;
  }

type t = {
  tf_name : string;
  address : string prop;
  address_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  ip_version : string prop;
  name : string prop;
  network : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  self_link : string prop;
}

let make ?address ?address_type ?description ?id ?ip_version ?network
    ?prefix_length ?project ?purpose ?timeouts ~name __id =
  let __type = "google_compute_global_address" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       address_type = Prop.computed __type __id "address_type";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ip_version = Prop.computed __type __id "ip_version";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       prefix_length = Prop.computed __type __id "prefix_length";
       project = Prop.computed __type __id "project";
       purpose = Prop.computed __type __id "purpose";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_global_address
        (google_compute_global_address ?address ?address_type
           ?description ?id ?ip_version ?network ?prefix_length
           ?project ?purpose ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?address ?address_type ?description ?id
    ?ip_version ?network ?prefix_length ?project ?purpose ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?address ?address_type ?description ?id ?ip_version ?network
      ?prefix_length ?project ?purpose ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
