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

type vpc_project = { project_id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_project) -> ()

let yojson_of_vpc_project =
  (function
   | { project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_project

[@@@deriving.end]

type details__cloud_vpns = { gateway : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : details__cloud_vpns) -> ()

let yojson_of_details__cloud_vpns =
  (function
   | { gateway = v_gateway } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway in
         ("gateway", arg) :: bnds
       in
       `Assoc bnds
    : details__cloud_vpns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details__cloud_vpns

[@@@deriving.end]

type details__cloud_router = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : details__cloud_router) -> ()

let yojson_of_details__cloud_router =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : details__cloud_router -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details__cloud_router

[@@@deriving.end]

type details = {
  cloud_router : details__cloud_router list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_vpns : details__cloud_vpns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  error : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : details) -> ()

let yojson_of_details =
  (function
   | {
       cloud_router = v_cloud_router;
       cloud_vpns = v_cloud_vpns;
       error = v_error;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error in
         ("error", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_vpns then bnds
         else
           let arg =
             (yojson_of_list yojson_of_details__cloud_vpns)
               v_cloud_vpns
           in
           let bnd = "cloud_vpns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_router then bnds
         else
           let arg =
             (yojson_of_list yojson_of_details__cloud_router)
               v_cloud_router
           in
           let bnd = "cloud_router", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details

[@@@deriving.end]

type google_edgecontainer_vpn_connection = {
  cluster : string prop;
  enable_high_availability : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  nat_gateway_ip : string prop option; [@option]
  project : string prop option; [@option]
  router : string prop option; [@option]
  vpc : string prop option; [@option]
  timeouts : timeouts option;
  vpc_project : vpc_project list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_edgecontainer_vpn_connection) -> ()

let yojson_of_google_edgecontainer_vpn_connection =
  (function
   | {
       cluster = v_cluster;
       enable_high_availability = v_enable_high_availability;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       nat_gateway_ip = v_nat_gateway_ip;
       project = v_project;
       router = v_router;
       vpc = v_vpc;
       timeouts = v_timeouts;
       vpc_project = v_vpc_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_project then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_project) v_vpc_project
           in
           let bnd = "vpc_project", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_vpc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_router with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "router", arg in
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
         match v_nat_gateway_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nat_gateway_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_high_availability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_high_availability", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : google_edgecontainer_vpn_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_edgecontainer_vpn_connection

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_project ?project_id () : vpc_project = { project_id }

let google_edgecontainer_vpn_connection ?enable_high_availability ?id
    ?labels ?nat_gateway_ip ?project ?router ?vpc ?timeouts
    ?(vpc_project = []) ~cluster ~location ~name () :
    google_edgecontainer_vpn_connection =
  {
    cluster;
    enable_high_availability;
    id;
    labels;
    location;
    name;
    nat_gateway_ip;
    project;
    router;
    vpc;
    timeouts;
    vpc_project;
  }

type t = {
  tf_name : string;
  cluster : string prop;
  create_time : string prop;
  details : details list prop;
  effective_labels : (string * string) list prop;
  enable_high_availability : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  nat_gateway_ip : string prop;
  project : string prop;
  router : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  vpc : string prop;
}

let make ?enable_high_availability ?id ?labels ?nat_gateway_ip
    ?project ?router ?vpc ?timeouts ?(vpc_project = []) ~cluster
    ~location ~name __id =
  let __type = "google_edgecontainer_vpn_connection" in
  let __attrs =
    ({
       tf_name = __id;
       cluster = Prop.computed __type __id "cluster";
       create_time = Prop.computed __type __id "create_time";
       details = Prop.computed __type __id "details";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_high_availability =
         Prop.computed __type __id "enable_high_availability";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       nat_gateway_ip = Prop.computed __type __id "nat_gateway_ip";
       project = Prop.computed __type __id "project";
       router = Prop.computed __type __id "router";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       vpc = Prop.computed __type __id "vpc";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgecontainer_vpn_connection
        (google_edgecontainer_vpn_connection
           ?enable_high_availability ?id ?labels ?nat_gateway_ip
           ?project ?router ?vpc ?timeouts ~vpc_project ~cluster
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_high_availability ?id ?labels
    ?nat_gateway_ip ?project ?router ?vpc ?timeouts
    ?(vpc_project = []) ~cluster ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enable_high_availability ?id ?labels ?nat_gateway_ip
      ?project ?router ?vpc ?timeouts ~vpc_project ~cluster ~location
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
