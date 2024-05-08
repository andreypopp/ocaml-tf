(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config_parameter = {
  parameter_key : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_parameter) -> ()

let yojson_of_config_parameter =
  (function
   | {
       parameter_key = v_parameter_key;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parameter_key in
         ("parameter_key", arg) :: bnds
       in
       `Assoc bnds
    : config_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_parameter

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

type endpoint__vpc_endpoint__network_interface = {
  availability_zone : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__vpc_endpoint__network_interface) -> ()

let yojson_of_endpoint__vpc_endpoint__network_interface =
  (function
   | {
       availability_zone = v_availability_zone;
       network_interface_id = v_network_interface_id;
       private_ip_address = v_private_ip_address;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : endpoint__vpc_endpoint__network_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__vpc_endpoint__network_interface

[@@@deriving.end]

type endpoint__vpc_endpoint = {
  network_interface : endpoint__vpc_endpoint__network_interface list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_endpoint_id : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__vpc_endpoint) -> ()

let yojson_of_endpoint__vpc_endpoint =
  (function
   | {
       network_interface = v_network_interface;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         if [] = v_network_interface then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_endpoint__vpc_endpoint__network_interface)
               v_network_interface
           in
           let bnd = "network_interface", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoint__vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__vpc_endpoint

[@@@deriving.end]

type endpoint = {
  address : string prop;
  port : float prop;
  vpc_endpoint : endpoint__vpc_endpoint list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       address = v_address;
       port = v_port;
       vpc_endpoint = v_vpc_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vpc_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint__vpc_endpoint)
               v_vpc_endpoint
           in
           let bnd = "vpc_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type aws_redshiftserverless_workgroup = {
  base_capacity : float prop option; [@option]
  enhanced_vpc_routing : bool prop option; [@option]
  id : string prop option; [@option]
  max_capacity : float prop option; [@option]
  namespace_name : string prop;
  port : float prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  workgroup_name : string prop;
  config_parameter : config_parameter list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_workgroup) -> ()

let yojson_of_aws_redshiftserverless_workgroup =
  (function
   | {
       base_capacity = v_base_capacity;
       enhanced_vpc_routing = v_enhanced_vpc_routing;
       id = v_id;
       max_capacity = v_max_capacity;
       namespace_name = v_namespace_name;
       port = v_port;
       publicly_accessible = v_publicly_accessible;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       workgroup_name = v_workgroup_name;
       config_parameter = v_config_parameter;
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
         if [] = v_config_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config_parameter)
               v_config_parameter
           in
           let bnd = "config_parameter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workgroup_name
         in
         ("workgroup_name", arg) :: bnds
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
         match v_publicly_accessible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publicly_accessible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         match v_max_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_capacity", arg in
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
         match v_enhanced_vpc_routing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enhanced_vpc_routing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base_capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_workgroup ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_workgroup

[@@@deriving.end]

let config_parameter ~parameter_key ~parameter_value () :
    config_parameter =
  { parameter_key; parameter_value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_redshiftserverless_workgroup ?base_capacity
    ?enhanced_vpc_routing ?id ?max_capacity ?port
    ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
    ?tags_all ?timeouts ~namespace_name ~workgroup_name
    ~config_parameter () : aws_redshiftserverless_workgroup =
  {
    base_capacity;
    enhanced_vpc_routing;
    id;
    max_capacity;
    namespace_name;
    port;
    publicly_accessible;
    security_group_ids;
    subnet_ids;
    tags;
    tags_all;
    workgroup_name;
    config_parameter;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  base_capacity : float prop;
  endpoint : endpoint list prop;
  enhanced_vpc_routing : bool prop;
  id : string prop;
  max_capacity : float prop;
  namespace_name : string prop;
  port : float prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workgroup_id : string prop;
  workgroup_name : string prop;
}

let make ?base_capacity ?enhanced_vpc_routing ?id ?max_capacity ?port
    ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
    ?tags_all ?timeouts ~namespace_name ~workgroup_name
    ~config_parameter __id =
  let __type = "aws_redshiftserverless_workgroup" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       base_capacity = Prop.computed __type __id "base_capacity";
       endpoint = Prop.computed __type __id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __type __id "enhanced_vpc_routing";
       id = Prop.computed __type __id "id";
       max_capacity = Prop.computed __type __id "max_capacity";
       namespace_name = Prop.computed __type __id "namespace_name";
       port = Prop.computed __type __id "port";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       workgroup_id = Prop.computed __type __id "workgroup_id";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_workgroup
        (aws_redshiftserverless_workgroup ?base_capacity
           ?enhanced_vpc_routing ?id ?max_capacity ?port
           ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
           ?tags_all ?timeouts ~namespace_name ~workgroup_name
           ~config_parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?base_capacity ?enhanced_vpc_routing ?id
    ?max_capacity ?port ?publicly_accessible ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?timeouts ~namespace_name
    ~workgroup_name ~config_parameter __id =
  let (r : _ Tf_core.resource) =
    make ?base_capacity ?enhanced_vpc_routing ?id ?max_capacity ?port
      ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
      ?tags_all ?timeouts ~namespace_name ~workgroup_name
      ~config_parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
