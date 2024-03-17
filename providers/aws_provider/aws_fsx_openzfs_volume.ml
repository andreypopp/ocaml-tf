(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_openzfs_volume__nfs_exports__client_configurations = {
  clients : string prop;  (** clients *)
  options : string prop list;  (** options *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__nfs_exports__client_configurations *)

type aws_fsx_openzfs_volume__nfs_exports = {
  client_configurations :
    aws_fsx_openzfs_volume__nfs_exports__client_configurations list;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__nfs_exports *)

type aws_fsx_openzfs_volume__origin_snapshot = {
  copy_strategy : string prop;  (** copy_strategy *)
  snapshot_arn : string prop;  (** snapshot_arn *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__origin_snapshot *)

type aws_fsx_openzfs_volume__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__timeouts *)

type aws_fsx_openzfs_volume__user_and_group_quotas = {
  id : float prop;  (** id *)
  storage_capacity_quota_gib : float prop;
      (** storage_capacity_quota_gib *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__user_and_group_quotas *)

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
  nfs_exports : aws_fsx_openzfs_volume__nfs_exports list;
  origin_snapshot : aws_fsx_openzfs_volume__origin_snapshot list;
  timeouts : aws_fsx_openzfs_volume__timeouts option;
  user_and_group_quotas :
    aws_fsx_openzfs_volume__user_and_group_quotas list;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume *)

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

let aws_fsx_openzfs_volume ?copy_tags_to_snapshots
    ?data_compression_type ?delete_volume_options ?id ?read_only
    ?record_size_kib ?storage_capacity_quota_gib
    ?storage_capacity_reservation_gib ?tags ?tags_all ?volume_type
    ?timeouts ~name ~parent_volume_id ~nfs_exports ~origin_snapshot
    ~user_and_group_quotas __resource_id =
  let __resource_type = "aws_fsx_openzfs_volume" in
  let __resource =
    ({
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
      : aws_fsx_openzfs_volume)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_volume __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       copy_tags_to_snapshots =
         Prop.computed __resource_type __resource_id
           "copy_tags_to_snapshots";
       data_compression_type =
         Prop.computed __resource_type __resource_id
           "data_compression_type";
       delete_volume_options =
         Prop.computed __resource_type __resource_id
           "delete_volume_options";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_volume_id =
         Prop.computed __resource_type __resource_id
           "parent_volume_id";
       read_only =
         Prop.computed __resource_type __resource_id "read_only";
       record_size_kib =
         Prop.computed __resource_type __resource_id
           "record_size_kib";
       storage_capacity_quota_gib =
         Prop.computed __resource_type __resource_id
           "storage_capacity_quota_gib";
       storage_capacity_reservation_gib =
         Prop.computed __resource_type __resource_id
           "storage_capacity_reservation_gib";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       volume_type =
         Prop.computed __resource_type __resource_id "volume_type";
     }
      : t)
  in
  __resource_attributes
