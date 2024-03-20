(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_access_control = {
  prefix_list_ids : string prop list;
  vpce_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_access_control) -> ()

let yojson_of_network_access_control =
  (function
   | { prefix_list_ids = v_prefix_list_ids; vpce_ids = v_vpce_ids }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_vpce_ids
         in
         ("vpce_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_prefix_list_ids
         in
         ("prefix_list_ids", arg) :: bnds
       in
       `Assoc bnds
    : network_access_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_access_control

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

type vpc_configuration = {
  security_group_ids : string prop list;
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_configuration) -> ()

let yojson_of_vpc_configuration =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : vpc_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_configuration

[@@@deriving.end]

type aws_grafana_workspace = {
  account_access_type : string prop;
  authentication_providers : string prop list;
  configuration : string prop option; [@option]
  data_sources : string prop list option; [@option]
  description : string prop option; [@option]
  grafana_version : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  notification_destinations : string prop list option; [@option]
  organization_role_name : string prop option; [@option]
  organizational_units : string prop list option; [@option]
  permission_type : string prop;
  role_arn : string prop option; [@option]
  stack_set_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  network_access_control : network_access_control list;
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_workspace) -> ()

let yojson_of_aws_grafana_workspace =
  (function
   | {
       account_access_type = v_account_access_type;
       authentication_providers = v_authentication_providers;
       configuration = v_configuration;
       data_sources = v_data_sources;
       description = v_description;
       grafana_version = v_grafana_version;
       id = v_id;
       name = v_name;
       notification_destinations = v_notification_destinations;
       organization_role_name = v_organization_role_name;
       organizational_units = v_organizational_units;
       permission_type = v_permission_type;
       role_arn = v_role_arn;
       stack_set_name = v_stack_set_name;
       tags = v_tags;
       tags_all = v_tags_all;
       network_access_control = v_network_access_control;
       timeouts = v_timeouts;
       vpc_configuration = v_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_configuration
             v_vpc_configuration
         in
         ("vpc_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_access_control
             v_network_access_control
         in
         ("network_access_control", arg) :: bnds
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
         match v_stack_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_set_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_permission_type
         in
         ("permission_type", arg) :: bnds
       in
       let bnds =
         match v_organizational_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "organizational_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_role_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_destinations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_destinations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_grafana_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grafana_version", arg in
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
         match v_data_sources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "data_sources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_authentication_providers
         in
         ("authentication_providers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_account_access_type
         in
         ("account_access_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_grafana_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_workspace

[@@@deriving.end]

let network_access_control ~prefix_list_ids ~vpce_ids () :
    network_access_control =
  { prefix_list_ids; vpce_ids }

let timeouts ?create ?update () : timeouts = { create; update }

let vpc_configuration ~security_group_ids ~subnet_ids () :
    vpc_configuration =
  { security_group_ids; subnet_ids }

let aws_grafana_workspace ?configuration ?data_sources ?description
    ?grafana_version ?id ?name ?notification_destinations
    ?organization_role_name ?organizational_units ?role_arn
    ?stack_set_name ?tags ?tags_all ?timeouts ~account_access_type
    ~authentication_providers ~permission_type
    ~network_access_control ~vpc_configuration () :
    aws_grafana_workspace =
  {
    account_access_type;
    authentication_providers;
    configuration;
    data_sources;
    description;
    grafana_version;
    id;
    name;
    notification_destinations;
    organization_role_name;
    organizational_units;
    permission_type;
    role_arn;
    stack_set_name;
    tags;
    tags_all;
    network_access_control;
    timeouts;
    vpc_configuration;
  }

type t = {
  account_access_type : string prop;
  arn : string prop;
  authentication_providers : string list prop;
  configuration : string prop;
  data_sources : string list prop;
  description : string prop;
  endpoint : string prop;
  grafana_version : string prop;
  id : string prop;
  name : string prop;
  notification_destinations : string list prop;
  organization_role_name : string prop;
  organizational_units : string list prop;
  permission_type : string prop;
  role_arn : string prop;
  saml_configuration_status : string prop;
  stack_set_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?configuration ?data_sources ?description ?grafana_version
    ?id ?name ?notification_destinations ?organization_role_name
    ?organizational_units ?role_arn ?stack_set_name ?tags ?tags_all
    ?timeouts ~account_access_type ~authentication_providers
    ~permission_type ~network_access_control ~vpc_configuration __id
    =
  let __type = "aws_grafana_workspace" in
  let __attrs =
    ({
       account_access_type =
         Prop.computed __type __id "account_access_type";
       arn = Prop.computed __type __id "arn";
       authentication_providers =
         Prop.computed __type __id "authentication_providers";
       configuration = Prop.computed __type __id "configuration";
       data_sources = Prop.computed __type __id "data_sources";
       description = Prop.computed __type __id "description";
       endpoint = Prop.computed __type __id "endpoint";
       grafana_version = Prop.computed __type __id "grafana_version";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_destinations =
         Prop.computed __type __id "notification_destinations";
       organization_role_name =
         Prop.computed __type __id "organization_role_name";
       organizational_units =
         Prop.computed __type __id "organizational_units";
       permission_type = Prop.computed __type __id "permission_type";
       role_arn = Prop.computed __type __id "role_arn";
       saml_configuration_status =
         Prop.computed __type __id "saml_configuration_status";
       stack_set_name = Prop.computed __type __id "stack_set_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace
        (aws_grafana_workspace ?configuration ?data_sources
           ?description ?grafana_version ?id ?name
           ?notification_destinations ?organization_role_name
           ?organizational_units ?role_arn ?stack_set_name ?tags
           ?tags_all ?timeouts ~account_access_type
           ~authentication_providers ~permission_type
           ~network_access_control ~vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration ?data_sources ?description
    ?grafana_version ?id ?name ?notification_destinations
    ?organization_role_name ?organizational_units ?role_arn
    ?stack_set_name ?tags ?tags_all ?timeouts ~account_access_type
    ~authentication_providers ~permission_type
    ~network_access_control ~vpc_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?configuration ?data_sources ?description ?grafana_version
      ?id ?name ?notification_destinations ?organization_role_name
      ?organizational_units ?role_arn ?stack_set_name ?tags ?tags_all
      ?timeouts ~account_access_type ~authentication_providers
      ~permission_type ~network_access_control ~vpc_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
