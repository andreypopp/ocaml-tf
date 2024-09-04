(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_repository_association__nfs = {
  dns_ips : string prop list option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_repository_association__nfs) -> ()

let yojson_of_data_repository_association__nfs =
  (function
   | { dns_ips = v_dns_ips; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_dns_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_repository_association__nfs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_repository_association__nfs

[@@@deriving.end]

type data_repository_association = {
  data_repository_path : string prop;
  data_repository_subdirectories : string prop list option; [@option]
  file_cache_path : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  nfs : data_repository_association__nfs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_repository_association) -> ()

let yojson_of_data_repository_association =
  (function
   | {
       data_repository_path = v_data_repository_path;
       data_repository_subdirectories =
         v_data_repository_subdirectories;
       file_cache_path = v_file_cache_path;
       tags = v_tags;
       nfs = v_nfs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_nfs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_repository_association__nfs)
               v_nfs
           in
           let bnd = "nfs", arg in
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
           yojson_of_prop yojson_of_string v_file_cache_path
         in
         ("file_cache_path", arg) :: bnds
       in
       let bnds =
         match v_data_repository_subdirectories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "data_repository_subdirectories", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_repository_path
         in
         ("data_repository_path", arg) :: bnds
       in
       `Assoc bnds
    : data_repository_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_repository_association

[@@@deriving.end]

type lustre_configuration__metadata_configuration = {
  storage_capacity : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lustre_configuration__metadata_configuration) -> ()

let yojson_of_lustre_configuration__metadata_configuration =
  (function
   | { storage_capacity = v_storage_capacity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_capacity
         in
         ("storage_capacity", arg) :: bnds
       in
       `Assoc bnds
    : lustre_configuration__metadata_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lustre_configuration__metadata_configuration

[@@@deriving.end]

type lustre_configuration__log_configuration = {
  destination : string prop;
  level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lustre_configuration__log_configuration) -> ()

let yojson_of_lustre_configuration__log_configuration =
  (function
   | { destination = v_destination; level = v_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : lustre_configuration__log_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lustre_configuration__log_configuration

[@@@deriving.end]

type lustre_configuration = {
  deployment_type : string prop;
  per_unit_storage_throughput : float prop;
  weekly_maintenance_start_time : string prop option; [@option]
  metadata_configuration :
    lustre_configuration__metadata_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lustre_configuration) -> ()

let yojson_of_lustre_configuration =
  (function
   | {
       deployment_type = v_deployment_type;
       per_unit_storage_throughput = v_per_unit_storage_throughput;
       weekly_maintenance_start_time =
         v_weekly_maintenance_start_time;
       metadata_configuration = v_metadata_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lustre_configuration__metadata_configuration)
               v_metadata_configuration
           in
           let bnd = "metadata_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_weekly_maintenance_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_maintenance_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_per_unit_storage_throughput
         in
         ("per_unit_storage_throughput", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_deployment_type
         in
         ("deployment_type", arg) :: bnds
       in
       `Assoc bnds
    : lustre_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lustre_configuration

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

type aws_fsx_file_cache = {
  copy_tags_to_data_repository_associations : bool prop option;
      [@option]
  file_cache_type : string prop;
  file_cache_type_version : string prop;
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  storage_capacity : float prop;
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  data_repository_association : data_repository_association list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lustre_configuration : lustre_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_file_cache) -> ()

let yojson_of_aws_fsx_file_cache =
  (function
   | {
       copy_tags_to_data_repository_associations =
         v_copy_tags_to_data_repository_associations;
       file_cache_type = v_file_cache_type;
       file_cache_type_version = v_file_cache_type_version;
       id = v_id;
       kms_key_id = v_kms_key_id;
       security_group_ids = v_security_group_ids;
       storage_capacity = v_storage_capacity;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       data_repository_association = v_data_repository_association;
       lustre_configuration = v_lustre_configuration;
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
         if Stdlib.( = ) [] v_lustre_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lustre_configuration)
               v_lustre_configuration
           in
           let bnd = "lustre_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_repository_association then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_repository_association)
               v_data_repository_association
           in
           let bnd = "data_repository_association", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_capacity
         in
         ("storage_capacity", arg) :: bnds
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
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_file_cache_type_version
         in
         ("file_cache_type_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_cache_type
         in
         ("file_cache_type", arg) :: bnds
       in
       let bnds =
         match v_copy_tags_to_data_repository_associations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "copy_tags_to_data_repository_associations", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_file_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_file_cache

[@@@deriving.end]

let data_repository_association__nfs ?dns_ips ~version () :
    data_repository_association__nfs =
  { dns_ips; version }

let data_repository_association ?data_repository_subdirectories ?tags
    ~data_repository_path ~file_cache_path ~nfs () :
    data_repository_association =
  {
    data_repository_path;
    data_repository_subdirectories;
    file_cache_path;
    tags;
    nfs;
  }

let lustre_configuration__metadata_configuration ~storage_capacity ()
    : lustre_configuration__metadata_configuration =
  { storage_capacity }

let lustre_configuration ?weekly_maintenance_start_time
    ~deployment_type ~per_unit_storage_throughput
    ~metadata_configuration () : lustre_configuration =
  {
    deployment_type;
    per_unit_storage_throughput;
    weekly_maintenance_start_time;
    metadata_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_file_cache ?copy_tags_to_data_repository_associations ?id
    ?kms_key_id ?security_group_ids ?tags ?tags_all ?timeouts
    ~file_cache_type ~file_cache_type_version ~storage_capacity
    ~subnet_ids ~data_repository_association ~lustre_configuration ()
    : aws_fsx_file_cache =
  {
    copy_tags_to_data_repository_associations;
    file_cache_type;
    file_cache_type_version;
    id;
    kms_key_id;
    security_group_ids;
    storage_capacity;
    subnet_ids;
    tags;
    tags_all;
    data_repository_association;
    lustre_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  copy_tags_to_data_repository_associations : bool prop;
  data_repository_association_ids : string list prop;
  dns_name : string prop;
  file_cache_id : string prop;
  file_cache_type : string prop;
  file_cache_type_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

let make ?copy_tags_to_data_repository_associations ?id ?kms_key_id
    ?security_group_ids ?tags ?tags_all ?timeouts ~file_cache_type
    ~file_cache_type_version ~storage_capacity ~subnet_ids
    ~data_repository_association ~lustre_configuration __id =
  let __type = "aws_fsx_file_cache" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       copy_tags_to_data_repository_associations =
         Prop.computed __type __id
           "copy_tags_to_data_repository_associations";
       data_repository_association_ids =
         Prop.computed __type __id "data_repository_association_ids";
       dns_name = Prop.computed __type __id "dns_name";
       file_cache_id = Prop.computed __type __id "file_cache_id";
       file_cache_type = Prop.computed __type __id "file_cache_type";
       file_cache_type_version =
         Prop.computed __type __id "file_cache_type_version";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_file_cache
        (aws_fsx_file_cache
           ?copy_tags_to_data_repository_associations ?id ?kms_key_id
           ?security_group_ids ?tags ?tags_all ?timeouts
           ~file_cache_type ~file_cache_type_version
           ~storage_capacity ~subnet_ids ~data_repository_association
           ~lustre_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?copy_tags_to_data_repository_associations
    ?id ?kms_key_id ?security_group_ids ?tags ?tags_all ?timeouts
    ~file_cache_type ~file_cache_type_version ~storage_capacity
    ~subnet_ids ~data_repository_association ~lustre_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?copy_tags_to_data_repository_associations ?id ?kms_key_id
      ?security_group_ids ?tags ?tags_all ?timeouts ~file_cache_type
      ~file_cache_type_version ~storage_capacity ~subnet_ids
      ~data_repository_association ~lustre_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
