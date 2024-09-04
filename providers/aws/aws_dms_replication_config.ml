(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_config = {
  availability_zone : string prop option; [@option]
  dns_name_servers : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  max_capacity_units : float prop option; [@option]
  min_capacity_units : float prop option; [@option]
  multi_az : bool prop option; [@option]
  preferred_maintenance_window : string prop option; [@option]
  replication_subnet_group_id : string prop;
  vpc_security_group_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_config) -> ()

let yojson_of_compute_config =
  (function
   | {
       availability_zone = v_availability_zone;
       dns_name_servers = v_dns_name_servers;
       kms_key_id = v_kms_key_id;
       max_capacity_units = v_max_capacity_units;
       min_capacity_units = v_min_capacity_units;
       multi_az = v_multi_az;
       preferred_maintenance_window = v_preferred_maintenance_window;
       replication_subnet_group_id = v_replication_subnet_group_id;
       vpc_security_group_ids = v_vpc_security_group_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_replication_subnet_group_id
         in
         ("replication_subnet_group_id", arg) :: bnds
       in
       let bnds =
         match v_preferred_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_maintenance_window", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multi_az with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_az", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_capacity_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_capacity_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_name_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_name_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : compute_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_config

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

type aws_dms_replication_config = {
  id : string prop option; [@option]
  replication_config_identifier : string prop;
  replication_settings : string prop option; [@option]
  replication_type : string prop;
  resource_identifier : string prop option; [@option]
  source_endpoint_arn : string prop;
  start_replication : bool prop option; [@option]
  supplemental_settings : string prop option; [@option]
  table_mappings : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  target_endpoint_arn : string prop;
  compute_config : compute_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_config) -> ()

let yojson_of_aws_dms_replication_config =
  (function
   | {
       id = v_id;
       replication_config_identifier =
         v_replication_config_identifier;
       replication_settings = v_replication_settings;
       replication_type = v_replication_type;
       resource_identifier = v_resource_identifier;
       source_endpoint_arn = v_source_endpoint_arn;
       start_replication = v_start_replication;
       supplemental_settings = v_supplemental_settings;
       table_mappings = v_table_mappings;
       tags = v_tags;
       tags_all = v_tags_all;
       target_endpoint_arn = v_target_endpoint_arn;
       compute_config = v_compute_config;
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
         if Stdlib.( = ) [] v_compute_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_compute_config)
               v_compute_config
           in
           let bnd = "compute_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_endpoint_arn
         in
         ("target_endpoint_arn", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_table_mappings
         in
         ("table_mappings", arg) :: bnds
       in
       let bnds =
         match v_supplemental_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "supplemental_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_replication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_replication", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_endpoint_arn
         in
         ("source_endpoint_arn", arg) :: bnds
       in
       let bnds =
         match v_resource_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_type
         in
         ("replication_type", arg) :: bnds
       in
       let bnds =
         match v_replication_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_replication_config_identifier
         in
         ("replication_config_identifier", arg) :: bnds
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
    : aws_dms_replication_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_replication_config

[@@@deriving.end]

let compute_config ?availability_zone ?dns_name_servers ?kms_key_id
    ?max_capacity_units ?min_capacity_units ?multi_az
    ?preferred_maintenance_window ?vpc_security_group_ids
    ~replication_subnet_group_id () : compute_config =
  {
    availability_zone;
    dns_name_servers;
    kms_key_id;
    max_capacity_units;
    min_capacity_units;
    multi_az;
    preferred_maintenance_window;
    replication_subnet_group_id;
    vpc_security_group_ids;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dms_replication_config ?id ?replication_settings
    ?resource_identifier ?start_replication ?supplemental_settings
    ?tags ?tags_all ?timeouts ~replication_config_identifier
    ~replication_type ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn ~compute_config () :
    aws_dms_replication_config =
  {
    id;
    replication_config_identifier;
    replication_settings;
    replication_type;
    resource_identifier;
    source_endpoint_arn;
    start_replication;
    supplemental_settings;
    table_mappings;
    tags;
    tags_all;
    target_endpoint_arn;
    compute_config;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  replication_config_identifier : string prop;
  replication_settings : string prop;
  replication_type : string prop;
  resource_identifier : string prop;
  source_endpoint_arn : string prop;
  start_replication : bool prop;
  supplemental_settings : string prop;
  table_mappings : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_endpoint_arn : string prop;
}

let make ?id ?replication_settings ?resource_identifier
    ?start_replication ?supplemental_settings ?tags ?tags_all
    ?timeouts ~replication_config_identifier ~replication_type
    ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
    ~compute_config __id =
  let __type = "aws_dms_replication_config" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       replication_config_identifier =
         Prop.computed __type __id "replication_config_identifier";
       replication_settings =
         Prop.computed __type __id "replication_settings";
       replication_type =
         Prop.computed __type __id "replication_type";
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
       source_endpoint_arn =
         Prop.computed __type __id "source_endpoint_arn";
       start_replication =
         Prop.computed __type __id "start_replication";
       supplemental_settings =
         Prop.computed __type __id "supplemental_settings";
       table_mappings = Prop.computed __type __id "table_mappings";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_endpoint_arn =
         Prop.computed __type __id "target_endpoint_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_config
        (aws_dms_replication_config ?id ?replication_settings
           ?resource_identifier ?start_replication
           ?supplemental_settings ?tags ?tags_all ?timeouts
           ~replication_config_identifier ~replication_type
           ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
           ~compute_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replication_settings
    ?resource_identifier ?start_replication ?supplemental_settings
    ?tags ?tags_all ?timeouts ~replication_config_identifier
    ~replication_type ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn ~compute_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replication_settings ?resource_identifier
      ?start_replication ?supplemental_settings ?tags ?tags_all
      ?timeouts ~replication_config_identifier ~replication_type
      ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
      ~compute_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
