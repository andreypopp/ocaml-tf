(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pit_policy = {
  enabled : bool prop option; [@option]
  interval : float prop;
  retention_duration : float prop;
  rule_id : float prop option; [@option]
  units : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pit_policy) -> ()

let yojson_of_pit_policy =
  (function
   | {
       enabled = v_enabled;
       interval = v_interval;
       retention_duration = v_retention_duration;
       rule_id = v_rule_id;
       units = v_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_units in
         ("units", arg) :: bnds
       in
       let bnds =
         match v_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rule_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_duration
         in
         ("retention_duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
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
    : pit_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pit_policy

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

type aws_drs_replication_configuration_template = {
  associate_default_security_group : bool prop;
  auto_replicate_new_disks : bool prop option; [@option]
  bandwidth_throttling : float prop;
  create_public_ip : bool prop;
  data_plane_routing : string prop;
  default_large_staging_disk_type : string prop;
  ebs_encryption : string prop;
  ebs_encryption_key_arn : string prop option; [@option]
  replication_server_instance_type : string prop;
  replication_servers_security_groups_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  staging_area_subnet_id : string prop;
  staging_area_tags : string prop Tf_core.assoc option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  use_dedicated_replication_server : bool prop;
  pit_policy : pit_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_drs_replication_configuration_template) -> ()

let yojson_of_aws_drs_replication_configuration_template =
  (function
   | {
       associate_default_security_group =
         v_associate_default_security_group;
       auto_replicate_new_disks = v_auto_replicate_new_disks;
       bandwidth_throttling = v_bandwidth_throttling;
       create_public_ip = v_create_public_ip;
       data_plane_routing = v_data_plane_routing;
       default_large_staging_disk_type =
         v_default_large_staging_disk_type;
       ebs_encryption = v_ebs_encryption;
       ebs_encryption_key_arn = v_ebs_encryption_key_arn;
       replication_server_instance_type =
         v_replication_server_instance_type;
       replication_servers_security_groups_ids =
         v_replication_servers_security_groups_ids;
       staging_area_subnet_id = v_staging_area_subnet_id;
       staging_area_tags = v_staging_area_tags;
       tags = v_tags;
       use_dedicated_replication_server =
         v_use_dedicated_replication_server;
       pit_policy = v_pit_policy;
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
         if Stdlib.( = ) [] v_pit_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pit_policy) v_pit_policy
           in
           let bnd = "pit_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_use_dedicated_replication_server
         in
         ("use_dedicated_replication_server", arg) :: bnds
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
         match v_staging_area_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "staging_area_tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_staging_area_subnet_id
         in
         ("staging_area_subnet_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_replication_servers_security_groups_ids
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_replication_servers_security_groups_ids
           in
           let bnd =
             "replication_servers_security_groups_ids", arg
           in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_replication_server_instance_type
         in
         ("replication_server_instance_type", arg) :: bnds
       in
       let bnds =
         match v_ebs_encryption_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebs_encryption_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ebs_encryption
         in
         ("ebs_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_large_staging_disk_type
         in
         ("default_large_staging_disk_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_plane_routing
         in
         ("data_plane_routing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_create_public_ip
         in
         ("create_public_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_bandwidth_throttling
         in
         ("bandwidth_throttling", arg) :: bnds
       in
       let bnds =
         match v_auto_replicate_new_disks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_replicate_new_disks", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_associate_default_security_group
         in
         ("associate_default_security_group", arg) :: bnds
       in
       `Assoc bnds
    : aws_drs_replication_configuration_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_drs_replication_configuration_template

[@@@deriving.end]

let pit_policy ?enabled ?rule_id ~interval ~retention_duration ~units
    () : pit_policy =
  { enabled; interval; retention_duration; rule_id; units }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_drs_replication_configuration_template
    ?auto_replicate_new_disks ?ebs_encryption_key_arn
    ?staging_area_tags ?tags ?(pit_policy = []) ?timeouts
    ~associate_default_security_group ~bandwidth_throttling
    ~create_public_ip ~data_plane_routing
    ~default_large_staging_disk_type ~ebs_encryption
    ~replication_server_instance_type
    ~replication_servers_security_groups_ids ~staging_area_subnet_id
    ~use_dedicated_replication_server () :
    aws_drs_replication_configuration_template =
  {
    associate_default_security_group;
    auto_replicate_new_disks;
    bandwidth_throttling;
    create_public_ip;
    data_plane_routing;
    default_large_staging_disk_type;
    ebs_encryption;
    ebs_encryption_key_arn;
    replication_server_instance_type;
    replication_servers_security_groups_ids;
    staging_area_subnet_id;
    staging_area_tags;
    tags;
    use_dedicated_replication_server;
    pit_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  associate_default_security_group : bool prop;
  auto_replicate_new_disks : bool prop;
  bandwidth_throttling : float prop;
  create_public_ip : bool prop;
  data_plane_routing : string prop;
  default_large_staging_disk_type : string prop;
  ebs_encryption : string prop;
  ebs_encryption_key_arn : string prop;
  id : string prop;
  replication_server_instance_type : string prop;
  replication_servers_security_groups_ids : string list prop;
  staging_area_subnet_id : string prop;
  staging_area_tags : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  use_dedicated_replication_server : bool prop;
}

let make ?auto_replicate_new_disks ?ebs_encryption_key_arn
    ?staging_area_tags ?tags ?(pit_policy = []) ?timeouts
    ~associate_default_security_group ~bandwidth_throttling
    ~create_public_ip ~data_plane_routing
    ~default_large_staging_disk_type ~ebs_encryption
    ~replication_server_instance_type
    ~replication_servers_security_groups_ids ~staging_area_subnet_id
    ~use_dedicated_replication_server __id =
  let __type = "aws_drs_replication_configuration_template" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       associate_default_security_group =
         Prop.computed __type __id "associate_default_security_group";
       auto_replicate_new_disks =
         Prop.computed __type __id "auto_replicate_new_disks";
       bandwidth_throttling =
         Prop.computed __type __id "bandwidth_throttling";
       create_public_ip =
         Prop.computed __type __id "create_public_ip";
       data_plane_routing =
         Prop.computed __type __id "data_plane_routing";
       default_large_staging_disk_type =
         Prop.computed __type __id "default_large_staging_disk_type";
       ebs_encryption = Prop.computed __type __id "ebs_encryption";
       ebs_encryption_key_arn =
         Prop.computed __type __id "ebs_encryption_key_arn";
       id = Prop.computed __type __id "id";
       replication_server_instance_type =
         Prop.computed __type __id "replication_server_instance_type";
       replication_servers_security_groups_ids =
         Prop.computed __type __id
           "replication_servers_security_groups_ids";
       staging_area_subnet_id =
         Prop.computed __type __id "staging_area_subnet_id";
       staging_area_tags =
         Prop.computed __type __id "staging_area_tags";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       use_dedicated_replication_server =
         Prop.computed __type __id "use_dedicated_replication_server";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_drs_replication_configuration_template
        (aws_drs_replication_configuration_template
           ?auto_replicate_new_disks ?ebs_encryption_key_arn
           ?staging_area_tags ?tags ~pit_policy ?timeouts
           ~associate_default_security_group ~bandwidth_throttling
           ~create_public_ip ~data_plane_routing
           ~default_large_staging_disk_type ~ebs_encryption
           ~replication_server_instance_type
           ~replication_servers_security_groups_ids
           ~staging_area_subnet_id ~use_dedicated_replication_server
           ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_replicate_new_disks
    ?ebs_encryption_key_arn ?staging_area_tags ?tags
    ?(pit_policy = []) ?timeouts ~associate_default_security_group
    ~bandwidth_throttling ~create_public_ip ~data_plane_routing
    ~default_large_staging_disk_type ~ebs_encryption
    ~replication_server_instance_type
    ~replication_servers_security_groups_ids ~staging_area_subnet_id
    ~use_dedicated_replication_server __id =
  let (r : _ Tf_core.resource) =
    make ?auto_replicate_new_disks ?ebs_encryption_key_arn
      ?staging_area_tags ?tags ~pit_policy ?timeouts
      ~associate_default_security_group ~bandwidth_throttling
      ~create_public_ip ~data_plane_routing
      ~default_large_staging_disk_type ~ebs_encryption
      ~replication_server_instance_type
      ~replication_servers_security_groups_ids
      ~staging_area_subnet_id ~use_dedicated_replication_server __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
