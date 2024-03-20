(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_options = {
  dns_record_ip_type : string prop option; [@option]
  private_dns_only_for_inbound_resolver_endpoint : bool prop option;
      [@option]
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
         match v_private_dns_only_for_inbound_resolver_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "private_dns_only_for_inbound_resolver_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_dns_record_ip_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_record_ip_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dns_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_options

[@@@deriving.end]

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

type aws_vpc_endpoint = {
  auto_accept : bool prop option; [@option]
  id : string prop option; [@option]
  ip_address_type : string prop option; [@option]
  policy : string prop option; [@option]
  private_dns_enabled : bool prop option; [@option]
  route_table_ids : string prop list option; [@option]
  security_group_ids : string prop list option; [@option]
  service_name : string prop;
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_endpoint_type : string prop option; [@option]
  vpc_id : string prop;
  dns_options : dns_options list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint) -> ()

let yojson_of_aws_vpc_endpoint =
  (function
   | {
       auto_accept = v_auto_accept;
       id = v_id;
       ip_address_type = v_ip_address_type;
       policy = v_policy;
       private_dns_enabled = v_private_dns_enabled;
       route_table_ids = v_route_table_ids;
       security_group_ids = v_security_group_ids;
       service_name = v_service_name;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_endpoint_type = v_vpc_endpoint_type;
       vpc_id = v_vpc_id;
       dns_options = v_dns_options;
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
           yojson_of_list yojson_of_dns_options v_dns_options
         in
         ("dns_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         match v_vpc_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_type", arg in
             bnd :: bnds
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_table_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "route_table_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_dns_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_dns_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
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
         match v_auto_accept with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_accept", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint

[@@@deriving.end]

let dns_options ?dns_record_ip_type
    ?private_dns_only_for_inbound_resolver_endpoint () : dns_options
    =
  {
    dns_record_ip_type;
    private_dns_only_for_inbound_resolver_endpoint;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_endpoint ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options () : aws_vpc_endpoint =
  {
    auto_accept;
    id;
    ip_address_type;
    policy;
    private_dns_enabled;
    route_table_ids;
    security_group_ids;
    service_name;
    subnet_ids;
    tags;
    tags_all;
    vpc_endpoint_type;
    vpc_id;
    dns_options;
    timeouts;
  }

type t = {
  arn : string prop;
  auto_accept : bool prop;
  cidr_blocks : string list prop;
  dns_entry : dns_entry list prop;
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
  tags_all : (string * string) list prop;
  vpc_endpoint_type : string prop;
  vpc_id : string prop;
}

let make ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options __id =
  let __type = "aws_vpc_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_accept = Prop.computed __type __id "auto_accept";
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       dns_entry = Prop.computed __type __id "dns_entry";
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
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_vpc_endpoint ?auto_accept ?id ?ip_address_type ?policy
           ?private_dns_enabled ?route_table_ids ?security_group_ids
           ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
           ~service_name ~vpc_id ~dns_options ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options __id =
  let (r : _ Tf_core.resource) =
    make ?auto_accept ?id ?ip_address_type ?policy
      ?private_dns_enabled ?route_table_ids ?security_group_ids
      ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
      ~service_name ~vpc_id ~dns_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
