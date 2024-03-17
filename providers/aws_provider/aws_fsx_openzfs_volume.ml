(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_openzfs_volume__nfs_exports__client_configurations = {
  clients : string;  (** clients *)
  options : string list;  (** options *)
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
  copy_strategy : string;  (** copy_strategy *)
  snapshot_arn : string;  (** snapshot_arn *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__origin_snapshot *)

type aws_fsx_openzfs_volume__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__timeouts *)

type aws_fsx_openzfs_volume__user_and_group_quotas = {
  id : float;  (** id *)
  storage_capacity_quota_gib : float;
      (** storage_capacity_quota_gib *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume__user_and_group_quotas *)

type aws_fsx_openzfs_volume = {
  copy_tags_to_snapshots : bool option; [@option]
      (** copy_tags_to_snapshots *)
  data_compression_type : string option; [@option]
      (** data_compression_type *)
  delete_volume_options : string list option; [@option]
      (** delete_volume_options *)
  name : string;  (** name *)
  parent_volume_id : string;  (** parent_volume_id *)
  record_size_kib : float option; [@option]  (** record_size_kib *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_type : string option; [@option]  (** volume_type *)
  nfs_exports : aws_fsx_openzfs_volume__nfs_exports list;
  origin_snapshot : aws_fsx_openzfs_volume__origin_snapshot list;
  timeouts : aws_fsx_openzfs_volume__timeouts option;
  user_and_group_quotas :
    aws_fsx_openzfs_volume__user_and_group_quotas list;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_volume *)

let aws_fsx_openzfs_volume ?copy_tags_to_snapshots
    ?data_compression_type ?delete_volume_options ?record_size_kib
    ?tags ?volume_type ?timeouts ~name ~parent_volume_id ~nfs_exports
    ~origin_snapshot ~user_and_group_quotas __resource_id =
  let __resource_type = "aws_fsx_openzfs_volume" in
  let __resource =
    {
      copy_tags_to_snapshots;
      data_compression_type;
      delete_volume_options;
      name;
      parent_volume_id;
      record_size_kib;
      tags;
      volume_type;
      nfs_exports;
      origin_snapshot;
      timeouts;
      user_and_group_quotas;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_volume __resource);
  ()
