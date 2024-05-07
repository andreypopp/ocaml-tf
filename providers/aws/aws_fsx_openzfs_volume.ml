(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type nfs_exports__client_configurations = {
  clients : string prop;
  options : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nfs_exports__client_configurations) -> ()

let yojson_of_nfs_exports__client_configurations =
  (function
   | { clients = v_clients; options = v_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_options
         in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_clients in
         ("clients", arg) :: bnds
       in
       `Assoc bnds
    : nfs_exports__client_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nfs_exports__client_configurations

[@@@deriving.end]

type nfs_exports = {
  client_configurations : nfs_exports__client_configurations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nfs_exports) -> ()

let yojson_of_nfs_exports =
  (function
   | { client_configurations = v_client_configurations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_nfs_exports__client_configurations
             v_client_configurations
         in
         ("client_configurations", arg) :: bnds
       in
       `Assoc bnds
    : nfs_exports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nfs_exports

[@@@deriving.end]

type origin_snapshot = {
  copy_strategy : string prop;
  snapshot_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_snapshot) -> ()

let yojson_of_origin_snapshot =
  (function
   | {
       copy_strategy = v_copy_strategy;
       snapshot_arn = v_snapshot_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_arn in
         ("snapshot_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_copy_strategy in
         ("copy_strategy", arg) :: bnds
       in
       `Assoc bnds
    : origin_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_snapshot

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

type user_and_group_quotas = {
  id : float prop;
  storage_capacity_quota_gib : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_and_group_quotas) -> ()

let yojson_of_user_and_group_quotas =
  (function
   | {
       id = v_id;
       storage_capacity_quota_gib = v_storage_capacity_quota_gib;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_storage_capacity_quota_gib
         in
         ("storage_capacity_quota_gib", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : user_and_group_quotas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_and_group_quotas

[@@@deriving.end]

type aws_fsx_openzfs_volume = {
  copy_tags_to_snapshots : bool prop option; [@option]
  data_compression_type : string prop option; [@option]
  delete_volume_options : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent_volume_id : string prop;
  read_only : bool prop option; [@option]
  record_size_kib : float prop option; [@option]
  storage_capacity_quota_gib : float prop option; [@option]
  storage_capacity_reservation_gib : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  volume_type : string prop option; [@option]
  nfs_exports : nfs_exports list;
  origin_snapshot : origin_snapshot list;
  timeouts : timeouts option;
  user_and_group_quotas : user_and_group_quotas list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_openzfs_volume) -> ()

let yojson_of_aws_fsx_openzfs_volume =
  (function
   | {
       copy_tags_to_snapshots = v_copy_tags_to_snapshots;
       data_compression_type = v_data_compression_type;
       delete_volume_options = v_delete_volume_options;
       id = v_id;
       name = v_name;
       parent_volume_id = v_parent_volume_id;
       read_only = v_read_only;
       record_size_kib = v_record_size_kib;
       storage_capacity_quota_gib = v_storage_capacity_quota_gib;
       storage_capacity_reservation_gib =
         v_storage_capacity_reservation_gib;
       tags = v_tags;
       tags_all = v_tags_all;
       volume_type = v_volume_type;
       nfs_exports = v_nfs_exports;
       origin_snapshot = v_origin_snapshot;
       timeouts = v_timeouts;
       user_and_group_quotas = v_user_and_group_quotas;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_user_and_group_quotas
             v_user_and_group_quotas
         in
         ("user_and_group_quotas", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origin_snapshot v_origin_snapshot
         in
         ("origin_snapshot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_nfs_exports v_nfs_exports
         in
         ("nfs_exports", arg) :: bnds
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
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
         match v_storage_capacity_reservation_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_capacity_reservation_gib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_capacity_quota_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_capacity_quota_gib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_size_kib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "record_size_kib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parent_volume_id
         in
         ("parent_volume_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_delete_volume_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "delete_volume_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_compression_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_compression_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_tags_to_snapshots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "copy_tags_to_snapshots", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_openzfs_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_openzfs_volume

[@@@deriving.end]

let nfs_exports__client_configurations ~clients ~options () :
    nfs_exports__client_configurations =
  { clients; options }

let nfs_exports ~client_configurations () : nfs_exports =
  { client_configurations }

let origin_snapshot ~copy_strategy ~snapshot_arn () : origin_snapshot
    =
  { copy_strategy; snapshot_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let user_and_group_quotas ~id ~storage_capacity_quota_gib ~type_ () :
    user_and_group_quotas =
  { id; storage_capacity_quota_gib; type_ }

let aws_fsx_openzfs_volume ?copy_tags_to_snapshots
    ?data_compression_type ?delete_volume_options ?id ?read_only
    ?record_size_kib ?storage_capacity_quota_gib
    ?storage_capacity_reservation_gib ?tags ?tags_all ?volume_type
    ?(nfs_exports = []) ?(origin_snapshot = []) ?timeouts ~name
    ~parent_volume_id ~user_and_group_quotas () :
    aws_fsx_openzfs_volume =
  {
    copy_tags_to_snapshots;
    data_compression_type;
    delete_volume_options;
    id;
    name;
    parent_volume_id;
    read_only;
    record_size_kib;
    storage_capacity_quota_gib;
    storage_capacity_reservation_gib;
    tags;
    tags_all;
    volume_type;
    nfs_exports;
    origin_snapshot;
    timeouts;
    user_and_group_quotas;
  }

type t = {
  tf_name : string;
  arn : string prop;
  copy_tags_to_snapshots : bool prop;
  data_compression_type : string prop;
  delete_volume_options : string list prop;
  id : string prop;
  name : string prop;
  parent_volume_id : string prop;
  read_only : bool prop;
  record_size_kib : float prop;
  storage_capacity_quota_gib : float prop;
  storage_capacity_reservation_gib : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  volume_type : string prop;
}

let make ?copy_tags_to_snapshots ?data_compression_type
    ?delete_volume_options ?id ?read_only ?record_size_kib
    ?storage_capacity_quota_gib ?storage_capacity_reservation_gib
    ?tags ?tags_all ?volume_type ?(nfs_exports = [])
    ?(origin_snapshot = []) ?timeouts ~name ~parent_volume_id
    ~user_and_group_quotas __id =
  let __type = "aws_fsx_openzfs_volume" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       copy_tags_to_snapshots =
         Prop.computed __type __id "copy_tags_to_snapshots";
       data_compression_type =
         Prop.computed __type __id "data_compression_type";
       delete_volume_options =
         Prop.computed __type __id "delete_volume_options";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_volume_id =
         Prop.computed __type __id "parent_volume_id";
       read_only = Prop.computed __type __id "read_only";
       record_size_kib = Prop.computed __type __id "record_size_kib";
       storage_capacity_quota_gib =
         Prop.computed __type __id "storage_capacity_quota_gib";
       storage_capacity_reservation_gib =
         Prop.computed __type __id "storage_capacity_reservation_gib";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       volume_type = Prop.computed __type __id "volume_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_openzfs_volume
        (aws_fsx_openzfs_volume ?copy_tags_to_snapshots
           ?data_compression_type ?delete_volume_options ?id
           ?read_only ?record_size_kib ?storage_capacity_quota_gib
           ?storage_capacity_reservation_gib ?tags ?tags_all
           ?volume_type ~nfs_exports ~origin_snapshot ?timeouts ~name
           ~parent_volume_id ~user_and_group_quotas ());
    attrs = __attrs;
  }

let register ?tf_module ?copy_tags_to_snapshots
    ?data_compression_type ?delete_volume_options ?id ?read_only
    ?record_size_kib ?storage_capacity_quota_gib
    ?storage_capacity_reservation_gib ?tags ?tags_all ?volume_type
    ?(nfs_exports = []) ?(origin_snapshot = []) ?timeouts ~name
    ~parent_volume_id ~user_and_group_quotas __id =
  let (r : _ Tf_core.resource) =
    make ?copy_tags_to_snapshots ?data_compression_type
      ?delete_volume_options ?id ?read_only ?record_size_kib
      ?storage_capacity_quota_gib ?storage_capacity_reservation_gib
      ?tags ?tags_all ?volume_type ~nfs_exports ~origin_snapshot
      ?timeouts ~name ~parent_volume_id ~user_and_group_quotas __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
