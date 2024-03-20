(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cidr_block_associations = {
  association_id : string prop;
  cidr_block : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cidr_block_associations) -> ()

let yojson_of_cidr_block_associations =
  (function
   | {
       association_id = v_association_id;
       cidr_block = v_cidr_block;
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
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_association_id
         in
         ("association_id", arg) :: bnds
       in
       `Assoc bnds
    : cidr_block_associations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cidr_block_associations

[@@@deriving.end]

type aws_vpc = {
  cidr_block : string prop option; [@option]
  default : bool prop option; [@option]
  dhcp_options_id : string prop option; [@option]
  id : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc) -> ()

let yojson_of_aws_vpc =
  (function
   | {
       cidr_block = v_cidr_block;
       default = v_default;
       dhcp_options_id = v_dhcp_options_id;
       id = v_id;
       state = v_state;
       tags = v_tags;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
         match v_dhcp_options_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dhcp_options_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc ?cidr_block ?default ?dhcp_options_id ?id ?state ?tags
    ?timeouts ~filter () : aws_vpc =
  {
    cidr_block;
    default;
    dhcp_options_id;
    id;
    state;
    tags;
    filter;
    timeouts;
  }

type t = {
  arn : string prop;
  cidr_block : string prop;
  cidr_block_associations : cidr_block_associations list prop;
  default : bool prop;
  dhcp_options_id : string prop;
  enable_dns_hostnames : bool prop;
  enable_dns_support : bool prop;
  enable_network_address_usage_metrics : bool prop;
  id : string prop;
  instance_tenancy : string prop;
  ipv6_association_id : string prop;
  ipv6_cidr_block : string prop;
  main_route_table_id : string prop;
  owner_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

let make ?cidr_block ?default ?dhcp_options_id ?id ?state ?tags
    ?timeouts ~filter __id =
  let __type = "aws_vpc" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cidr_block = Prop.computed __type __id "cidr_block";
       cidr_block_associations =
         Prop.computed __type __id "cidr_block_associations";
       default = Prop.computed __type __id "default";
       dhcp_options_id = Prop.computed __type __id "dhcp_options_id";
       enable_dns_hostnames =
         Prop.computed __type __id "enable_dns_hostnames";
       enable_dns_support =
         Prop.computed __type __id "enable_dns_support";
       enable_network_address_usage_metrics =
         Prop.computed __type __id
           "enable_network_address_usage_metrics";
       id = Prop.computed __type __id "id";
       instance_tenancy =
         Prop.computed __type __id "instance_tenancy";
       ipv6_association_id =
         Prop.computed __type __id "ipv6_association_id";
       ipv6_cidr_block = Prop.computed __type __id "ipv6_cidr_block";
       main_route_table_id =
         Prop.computed __type __id "main_route_table_id";
       owner_id = Prop.computed __type __id "owner_id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc
        (aws_vpc ?cidr_block ?default ?dhcp_options_id ?id ?state
           ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_block ?default ?dhcp_options_id ?id
    ?state ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_block ?default ?dhcp_options_id ?id ?state ?tags
      ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
