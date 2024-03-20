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

type edges = {
  asn : float prop;
  edge_location : string prop;
  inside_cidr_blocks : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : edges) -> ()

let yojson_of_edges =
  (function
   | {
       asn = v_asn;
       edge_location = v_edge_location;
       inside_cidr_blocks = v_inside_cidr_blocks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_inside_cidr_blocks
         in
         ("inside_cidr_blocks", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_edge_location in
         ("edge_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : edges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_edges

[@@@deriving.end]

type segments = {
  edge_locations : string prop list;
  name : string prop;
  shared_segments : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segments) -> ()

let yojson_of_segments =
  (function
   | {
       edge_locations = v_edge_locations;
       name = v_name;
       shared_segments = v_shared_segments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_shared_segments
         in
         ("shared_segments", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_edge_locations
         in
         ("edge_locations", arg) :: bnds
       in
       `Assoc bnds
    : segments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segments

[@@@deriving.end]

type aws_networkmanager_core_network = {
  base_policy_document : string prop option; [@option]
  base_policy_region : string prop option; [@option]
  base_policy_regions : string prop list option; [@option]
  create_base_policy : bool prop option; [@option]
  description : string prop option; [@option]
  global_network_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_core_network) -> ()

let yojson_of_aws_networkmanager_core_network =
  (function
   | {
       base_policy_document = v_base_policy_document;
       base_policy_region = v_base_policy_region;
       base_policy_regions = v_base_policy_regions;
       create_base_policy = v_create_base_policy;
       description = v_description;
       global_network_id = v_global_network_id;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
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
         match v_create_base_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_base_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_policy_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "base_policy_regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_policy_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_policy_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_policy_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_policy_document", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_core_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_core_network

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_core_network ?base_policy_document
    ?base_policy_region ?base_policy_regions ?create_base_policy
    ?description ?id ?tags ?tags_all ?timeouts ~global_network_id ()
    : aws_networkmanager_core_network =
  {
    base_policy_document;
    base_policy_region;
    base_policy_regions;
    create_base_policy;
    description;
    global_network_id;
    id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  base_policy_document : string prop;
  base_policy_region : string prop;
  base_policy_regions : string list prop;
  create_base_policy : bool prop;
  created_at : string prop;
  description : string prop;
  edges : edges list prop;
  global_network_id : string prop;
  id : string prop;
  segments : segments list prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?base_policy_document ?base_policy_region
    ?base_policy_regions ?create_base_policy ?description ?id ?tags
    ?tags_all ?timeouts ~global_network_id __id =
  let __type = "aws_networkmanager_core_network" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       base_policy_document =
         Prop.computed __type __id "base_policy_document";
       base_policy_region =
         Prop.computed __type __id "base_policy_region";
       base_policy_regions =
         Prop.computed __type __id "base_policy_regions";
       create_base_policy =
         Prop.computed __type __id "create_base_policy";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       edges = Prop.computed __type __id "edges";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       segments = Prop.computed __type __id "segments";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_core_network
        (aws_networkmanager_core_network ?base_policy_document
           ?base_policy_region ?base_policy_regions
           ?create_base_policy ?description ?id ?tags ?tags_all
           ?timeouts ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?base_policy_document ?base_policy_region
    ?base_policy_regions ?create_base_policy ?description ?id ?tags
    ?tags_all ?timeouts ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?base_policy_document ?base_policy_region
      ?base_policy_regions ?create_base_policy ?description ?id ?tags
      ?tags_all ?timeouts ~global_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
