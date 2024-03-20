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

type private_dns_name_configuration = {
  name : string prop;
  state : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_dns_name_configuration) -> ()

let yojson_of_private_dns_name_configuration =
  (function
   | {
       name = v_name;
       state = v_state;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : private_dns_name_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_name_configuration

[@@@deriving.end]

type aws_vpc_endpoint_service = {
  acceptance_required : bool prop;
  allowed_principals : string prop list option; [@option]
  gateway_load_balancer_arns : string prop list option; [@option]
  id : string prop option; [@option]
  network_load_balancer_arns : string prop list option; [@option]
  private_dns_name : string prop option; [@option]
  supported_ip_address_types : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_service) -> ()

let yojson_of_aws_vpc_endpoint_service =
  (function
   | {
       acceptance_required = v_acceptance_required;
       allowed_principals = v_allowed_principals;
       gateway_load_balancer_arns = v_gateway_load_balancer_arns;
       id = v_id;
       network_load_balancer_arns = v_network_load_balancer_arns;
       private_dns_name = v_private_dns_name;
       supported_ip_address_types = v_supported_ip_address_types;
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
         match v_supported_ip_address_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_ip_address_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_dns_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_dns_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_load_balancer_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_load_balancer_arns", arg in
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
         match v_gateway_load_balancer_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gateway_load_balancer_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_principals", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_acceptance_required
         in
         ("acceptance_required", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_endpoint_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_service

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_endpoint_service ?allowed_principals
    ?gateway_load_balancer_arns ?id ?network_load_balancer_arns
    ?private_dns_name ?supported_ip_address_types ?tags ?tags_all
    ?timeouts ~acceptance_required () : aws_vpc_endpoint_service =
  {
    acceptance_required;
    allowed_principals;
    gateway_load_balancer_arns;
    id;
    network_load_balancer_arns;
    private_dns_name;
    supported_ip_address_types;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  acceptance_required : bool prop;
  allowed_principals : string list prop;
  arn : string prop;
  availability_zones : string list prop;
  base_endpoint_dns_names : string list prop;
  gateway_load_balancer_arns : string list prop;
  id : string prop;
  manages_vpc_endpoints : bool prop;
  network_load_balancer_arns : string list prop;
  private_dns_name : string prop;
  private_dns_name_configuration :
    private_dns_name_configuration list prop;
  service_name : string prop;
  service_type : string prop;
  state : string prop;
  supported_ip_address_types : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?allowed_principals ?gateway_load_balancer_arns ?id
    ?network_load_balancer_arns ?private_dns_name
    ?supported_ip_address_types ?tags ?tags_all ?timeouts
    ~acceptance_required __id =
  let __type = "aws_vpc_endpoint_service" in
  let __attrs =
    ({
       acceptance_required =
         Prop.computed __type __id "acceptance_required";
       allowed_principals =
         Prop.computed __type __id "allowed_principals";
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       base_endpoint_dns_names =
         Prop.computed __type __id "base_endpoint_dns_names";
       gateway_load_balancer_arns =
         Prop.computed __type __id "gateway_load_balancer_arns";
       id = Prop.computed __type __id "id";
       manages_vpc_endpoints =
         Prop.computed __type __id "manages_vpc_endpoints";
       network_load_balancer_arns =
         Prop.computed __type __id "network_load_balancer_arns";
       private_dns_name =
         Prop.computed __type __id "private_dns_name";
       private_dns_name_configuration =
         Prop.computed __type __id "private_dns_name_configuration";
       service_name = Prop.computed __type __id "service_name";
       service_type = Prop.computed __type __id "service_type";
       state = Prop.computed __type __id "state";
       supported_ip_address_types =
         Prop.computed __type __id "supported_ip_address_types";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_service
        (aws_vpc_endpoint_service ?allowed_principals
           ?gateway_load_balancer_arns ?id
           ?network_load_balancer_arns ?private_dns_name
           ?supported_ip_address_types ?tags ?tags_all ?timeouts
           ~acceptance_required ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_principals
    ?gateway_load_balancer_arns ?id ?network_load_balancer_arns
    ?private_dns_name ?supported_ip_address_types ?tags ?tags_all
    ?timeouts ~acceptance_required __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_principals ?gateway_load_balancer_arns ?id
      ?network_load_balancer_arns ?private_dns_name
      ?supported_ip_address_types ?tags ?tags_all ?timeouts
      ~acceptance_required __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
