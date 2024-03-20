(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attributes = {
  flow_logs_enabled : bool prop option; [@option]
  flow_logs_s3_bucket : string prop option; [@option]
  flow_logs_s3_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes) -> ()

let yojson_of_attributes =
  (function
   | {
       flow_logs_enabled = v_flow_logs_enabled;
       flow_logs_s3_bucket = v_flow_logs_s3_bucket;
       flow_logs_s3_prefix = v_flow_logs_s3_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_flow_logs_s3_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flow_logs_s3_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flow_logs_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flow_logs_s3_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flow_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "flow_logs_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type ip_sets = {
  ip_addresses : string prop list;
  ip_family : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_sets) -> ()

let yojson_of_ip_sets =
  (function
   | { ip_addresses = v_ip_addresses; ip_family = v_ip_family } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_family in
         ("ip_family", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       `Assoc bnds
    : ip_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_sets

[@@@deriving.end]

type aws_globalaccelerator_custom_routing_accelerator = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  ip_address_type : string prop option; [@option]
  ip_addresses : string prop list option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  attributes : attributes list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_globalaccelerator_custom_routing_accelerator) -> ()

let yojson_of_aws_globalaccelerator_custom_routing_accelerator =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       ip_address_type = v_ip_address_type;
       ip_addresses = v_ip_addresses;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       attributes = v_attributes;
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
         let arg =
           yojson_of_list yojson_of_attributes v_attributes
         in
         ("attributes", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_custom_routing_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_custom_routing_accelerator

[@@@deriving.end]

let attributes ?flow_logs_enabled ?flow_logs_s3_bucket
    ?flow_logs_s3_prefix () : attributes =
  { flow_logs_enabled; flow_logs_s3_bucket; flow_logs_s3_prefix }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_globalaccelerator_custom_routing_accelerator ?enabled ?id
    ?ip_address_type ?ip_addresses ?tags ?tags_all ?timeouts ~name
    ~attributes () : aws_globalaccelerator_custom_routing_accelerator
    =
  {
    enabled;
    id;
    ip_address_type;
    ip_addresses;
    name;
    tags;
    tags_all;
    attributes;
    timeouts;
  }

type t = {
  dns_name : string prop;
  enabled : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  ip_address_type : string prop;
  ip_addresses : string list prop;
  ip_sets : ip_sets list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enabled ?id ?ip_address_type ?ip_addresses ?tags ?tags_all
    ?timeouts ~name ~attributes __id =
  let __type = "aws_globalaccelerator_custom_routing_accelerator" in
  let __attrs =
    ({
       dns_name = Prop.computed __type __id "dns_name";
       enabled = Prop.computed __type __id "enabled";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       ip_addresses = Prop.computed __type __id "ip_addresses";
       ip_sets = Prop.computed __type __id "ip_sets";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_accelerator
        (aws_globalaccelerator_custom_routing_accelerator ?enabled
           ?id ?ip_address_type ?ip_addresses ?tags ?tags_all
           ?timeouts ~name ~attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?ip_address_type ?ip_addresses
    ?tags ?tags_all ?timeouts ~name ~attributes __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?ip_address_type ?ip_addresses ?tags ?tags_all
      ?timeouts ~name ~attributes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
