(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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

type dns_entry = {
  dns_name : string prop;
  hosted_zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_entry) -> ()

let yojson_of_dns_entry =
  (function
   | { dns_name = v_dns_name; hosted_zone_id = v_hosted_zone_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hosted_zone_id
         in
         ("hosted_zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : dns_entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_entry

[@@@deriving.end]

type dns_options = {
  dns_record_ip_type : string prop;
  private_dns_only_for_inbound_resolver_endpoint : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_options) -> ()

let yojson_of_dns_options =
  (function
   | {
       dns_record_ip_type = v_dns_record_ip_type;
       private_dns_only_for_inbound_resolver_endpoint =
         v_private_dns_only_for_inbound_resolver_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_private_dns_only_for_inbound_resolver_endpoint
         in
         ("private_dns_only_for_inbound_resolver_endpoint", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dns_record_ip_type
         in
         ("dns_record_ip_type", arg) :: bnds
       in
       `Assoc bnds
    : dns_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_options

[@@@deriving.end]

type aws_vpc_endpoint = {
  id : string prop option; [@option]
  service_name : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  vpc_id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint) -> ()

let yojson_of_aws_vpc_endpoint =
  (function
   | {
       id = v_id;
       service_name = v_service_name;
       state = v_state;
       tags = v_tags;
       vpc_id = v_vpc_id;
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
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
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
       `Assoc bnds
    : aws_vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc_endpoint ?id ?service_name ?state ?tags ?vpc_id ?timeouts
    ~filter () : aws_vpc_endpoint =
  { id; service_name; state; tags; vpc_id; filter; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  cidr_blocks : string list prop;
  dns_entry : dns_entry list prop;
  dns_options : dns_options list prop;
  id : string prop;
  ip_address_type : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  policy : string prop;
  prefix_list_id : string prop;
  private_dns_enabled : bool prop;
  requester_managed : bool prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  service_name : string prop;
  state : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  vpc_endpoint_type : string prop;
  vpc_id : string prop;
}

let make ?id ?service_name ?state ?tags ?vpc_id ?timeouts ~filter
    __id =
  let __type = "aws_vpc_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       dns_entry = Prop.computed __type __id "dns_entry";
       dns_options = Prop.computed __type __id "dns_options";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       policy = Prop.computed __type __id "policy";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       private_dns_enabled =
         Prop.computed __type __id "private_dns_enabled";
       requester_managed =
         Prop.computed __type __id "requester_managed";
       route_table_ids = Prop.computed __type __id "route_table_ids";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       service_name = Prop.computed __type __id "service_name";
       state = Prop.computed __type __id "state";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       vpc_endpoint_type =
         Prop.computed __type __id "vpc_endpoint_type";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint
        (aws_vpc_endpoint ?id ?service_name ?state ?tags ?vpc_id
           ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?service_name ?state ?tags ?vpc_id
    ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?service_name ?state ?tags ?vpc_id ?timeouts ~filter
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
