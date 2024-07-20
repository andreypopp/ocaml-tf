(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type high_availability_config = { desired_capacity : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : high_availability_config) -> ()

let yojson_of_high_availability_config =
  (function
   | { desired_capacity = v_desired_capacity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_desired_capacity
         in
         ("desired_capacity", arg) :: bnds
       in
       `Assoc bnds
    : high_availability_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_high_availability_config

[@@@deriving.end]

type storage_configuration__efs = {
  file_system_id : string prop;
  mount_point : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__efs) -> ()

let yojson_of_storage_configuration__efs =
  (function
   | {
       file_system_id = v_file_system_id;
       mount_point = v_mount_point;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_point in
         ("mount_point", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__efs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__efs

[@@@deriving.end]

type storage_configuration__fsx = {
  file_system_id : string prop;
  mount_point : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__fsx) -> ()

let yojson_of_storage_configuration__fsx =
  (function
   | {
       file_system_id = v_file_system_id;
       mount_point = v_mount_point;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_point in
         ("mount_point", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__fsx -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__fsx

[@@@deriving.end]

type storage_configuration = {
  efs : storage_configuration__efs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fsx : storage_configuration__fsx list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration) -> ()

let yojson_of_storage_configuration =
  (function
   | { efs = v_efs; fsx = v_fsx } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_fsx then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_configuration__fsx)
               v_fsx
           in
           let bnd = "fsx", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_efs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_configuration__efs)
               v_efs
           in
           let bnd = "efs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration

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

type aws_m2_environment = {
  apply_changes_during_maintenance_window : bool prop option;
      [@option]
  description : string prop option; [@option]
  engine_type : string prop;
  engine_version : string prop option; [@option]
  force_update : bool prop option; [@option]
  instance_type : string prop;
  kms_key_id : string prop option; [@option]
  name : string prop;
  preferred_maintenance_window : string prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  high_availability_config : high_availability_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_configuration : storage_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_m2_environment) -> ()

let yojson_of_aws_m2_environment =
  (function
   | {
       apply_changes_during_maintenance_window =
         v_apply_changes_during_maintenance_window;
       description = v_description;
       engine_type = v_engine_type;
       engine_version = v_engine_version;
       force_update = v_force_update;
       instance_type = v_instance_type;
       kms_key_id = v_kms_key_id;
       name = v_name;
       preferred_maintenance_window = v_preferred_maintenance_window;
       publicly_accessible = v_publicly_accessible;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       high_availability_config = v_high_availability_config;
       storage_configuration = v_storage_configuration;
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
         if Stdlib.( = ) [] v_storage_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_configuration)
               v_storage_configuration
           in
           let bnd = "storage_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_high_availability_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_high_availability_config)
               v_high_availability_config
           in
           let bnd = "high_availability_config", arg in
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
         match v_preferred_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_maintenance_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_force_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine_type in
         ("engine_type", arg) :: bnds
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
         match v_apply_changes_during_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "apply_changes_during_maintenance_window", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_m2_environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_m2_environment

[@@@deriving.end]

let high_availability_config ~desired_capacity () :
    high_availability_config =
  { desired_capacity }

let storage_configuration__efs ~file_system_id ~mount_point () :
    storage_configuration__efs =
  { file_system_id; mount_point }

let storage_configuration__fsx ~file_system_id ~mount_point () :
    storage_configuration__fsx =
  { file_system_id; mount_point }

let storage_configuration ?(efs = []) ?(fsx = []) () :
    storage_configuration =
  { efs; fsx }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_m2_environment ?apply_changes_during_maintenance_window
    ?description ?engine_version ?force_update ?kms_key_id
    ?preferred_maintenance_window ?publicly_accessible
    ?security_group_ids ?subnet_ids ?tags
    ?(high_availability_config = []) ?(storage_configuration = [])
    ?timeouts ~engine_type ~instance_type ~name () :
    aws_m2_environment =
  {
    apply_changes_during_maintenance_window;
    description;
    engine_type;
    engine_version;
    force_update;
    instance_type;
    kms_key_id;
    name;
    preferred_maintenance_window;
    publicly_accessible;
    security_group_ids;
    subnet_ids;
    tags;
    high_availability_config;
    storage_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  apply_changes_during_maintenance_window : bool prop;
  arn : string prop;
  description : string prop;
  engine_type : string prop;
  engine_version : string prop;
  environment_id : string prop;
  force_update : bool prop;
  id : string prop;
  instance_type : string prop;
  kms_key_id : string prop;
  load_balancer_arn : string prop;
  name : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?apply_changes_during_maintenance_window ?description
    ?engine_version ?force_update ?kms_key_id
    ?preferred_maintenance_window ?publicly_accessible
    ?security_group_ids ?subnet_ids ?tags
    ?(high_availability_config = []) ?(storage_configuration = [])
    ?timeouts ~engine_type ~instance_type ~name __id =
  let __type = "aws_m2_environment" in
  let __attrs =
    ({
       tf_name = __id;
       apply_changes_during_maintenance_window =
         Prop.computed __type __id
           "apply_changes_during_maintenance_window";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       engine_type = Prop.computed __type __id "engine_type";
       engine_version = Prop.computed __type __id "engine_version";
       environment_id = Prop.computed __type __id "environment_id";
       force_update = Prop.computed __type __id "force_update";
       id = Prop.computed __type __id "id";
       instance_type = Prop.computed __type __id "instance_type";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       load_balancer_arn =
         Prop.computed __type __id "load_balancer_arn";
       name = Prop.computed __type __id "name";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_m2_environment
        (aws_m2_environment ?apply_changes_during_maintenance_window
           ?description ?engine_version ?force_update ?kms_key_id
           ?preferred_maintenance_window ?publicly_accessible
           ?security_group_ids ?subnet_ids ?tags
           ~high_availability_config ~storage_configuration ?timeouts
           ~engine_type ~instance_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_changes_during_maintenance_window
    ?description ?engine_version ?force_update ?kms_key_id
    ?preferred_maintenance_window ?publicly_accessible
    ?security_group_ids ?subnet_ids ?tags
    ?(high_availability_config = []) ?(storage_configuration = [])
    ?timeouts ~engine_type ~instance_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?apply_changes_during_maintenance_window ?description
      ?engine_version ?force_update ?kms_key_id
      ?preferred_maintenance_window ?publicly_accessible
      ?security_group_ids ?subnet_ids ?tags ~high_availability_config
      ~storage_configuration ?timeouts ~engine_type ~instance_type
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
