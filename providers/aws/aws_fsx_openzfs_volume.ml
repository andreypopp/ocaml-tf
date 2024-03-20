(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type nfs_exports__client_configurations = {
  clients : string prop;  (** clients *)
  options : string prop list;  (** options *)
}
[@@deriving yojson_of]
(** nfs_exports__client_configurations *)

type nfs_exports = {
  client_configurations : nfs_exports__client_configurations list;
}
[@@deriving yojson_of]
(** nfs_exports *)

type origin_snapshot = {
  copy_strategy : string prop;  (** copy_strategy *)
  snapshot_arn : string prop;  (** snapshot_arn *)
}
[@@deriving yojson_of]
(** origin_snapshot *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user_and_group_quotas = {
  id : float prop;  (** id *)
  storage_capacity_quota_gib : float prop;
      (** storage_capacity_quota_gib *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** user_and_group_quotas *)

type aws_fsx_openzfs_volume = {
  copy_tags_to_snapshots : bool prop option; [@option]
      (** copy_tags_to_snapshots *)
  data_compression_type : string prop option; [@option]
      (** data_compression_type *)
  delete_volume_options : string prop list option; [@option]
      (** delete_volume_options *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_volume_id : string prop;  (** parent_volume_id *)
  read_only : bool prop option; [@option]  (** read_only *)
  record_size_kib : float prop option; [@option]
      (** record_size_kib *)
  storage_capacity_quota_gib : float prop option; [@option]
      (** storage_capacity_quota_gib *)
  storage_capacity_reservation_gib : float prop option; [@option]
      (** storage_capacity_reservation_gib *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_type : string prop option; [@option]  (** volume_type *)
  nfs_exports : nfs_exports list;
  origin_snapshot : origin_snapshot list;
  timeouts : timeouts option;
  user_and_group_quotas : user_and_group_quotas list;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume *)

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
    ?timeouts ~name ~parent_volume_id ~nfs_exports ~origin_snapshot
    ~user_and_group_quotas () : aws_fsx_openzfs_volume =
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
    ?tags ?tags_all ?volume_type ?timeouts ~name ~parent_volume_id
    ~nfs_exports ~origin_snapshot ~user_and_group_quotas __id =
  let __type = "aws_fsx_openzfs_volume" in
  let __attrs =
    ({
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
           ?volume_type ?timeouts ~name ~parent_volume_id
           ~nfs_exports ~origin_snapshot ~user_and_group_quotas ());
    attrs = __attrs;
  }

let register ?tf_module ?copy_tags_to_snapshots
    ?data_compression_type ?delete_volume_options ?id ?read_only
    ?record_size_kib ?storage_capacity_quota_gib
    ?storage_capacity_reservation_gib ?tags ?tags_all ?volume_type
    ?timeouts ~name ~parent_volume_id ~nfs_exports ~origin_snapshot
    ~user_and_group_quotas __id =
  let (r : _ Tf_core.resource) =
    make ?copy_tags_to_snapshots ?data_compression_type
      ?delete_volume_options ?id ?read_only ?record_size_kib
      ?storage_capacity_quota_gib ?storage_capacity_reservation_gib
      ?tags ?tags_all ?volume_type ?timeouts ~name ~parent_volume_id
      ~nfs_exports ~origin_snapshot ~user_and_group_quotas __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
