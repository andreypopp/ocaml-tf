(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster_snapshot__timeouts *)

type aws_neptune_cluster_snapshot = {
  db_cluster_identifier : string prop;  (** db_cluster_identifier *)
  db_cluster_snapshot_identifier : string prop;
      (** db_cluster_snapshot_identifier *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_neptune_cluster_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_cluster_snapshot *)

type t = {
  allocated_storage : float prop;
  availability_zones : string list prop;
  db_cluster_identifier : string prop;
  db_cluster_snapshot_arn : string prop;
  db_cluster_snapshot_identifier : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  license_model : string prop;
  port : float prop;
  snapshot_type : string prop;
  source_db_cluster_snapshot_arn : string prop;
  status : string prop;
  storage_encrypted : bool prop;
  vpc_id : string prop;
}

let aws_neptune_cluster_snapshot ?id ?timeouts ~db_cluster_identifier
    ~db_cluster_snapshot_identifier __resource_id =
  let __resource_type = "aws_neptune_cluster_snapshot" in
  let __resource =
    ({
       db_cluster_identifier;
       db_cluster_snapshot_identifier;
       id;
       timeouts;
     }
      : aws_neptune_cluster_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_snapshot __resource);
  let __resource_attributes =
    ({
       allocated_storage =
         Prop.computed __resource_type __resource_id
           "allocated_storage";
       availability_zones =
         Prop.computed __resource_type __resource_id
           "availability_zones";
       db_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "db_cluster_identifier";
       db_cluster_snapshot_arn =
         Prop.computed __resource_type __resource_id
           "db_cluster_snapshot_arn";
       db_cluster_snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "db_cluster_snapshot_identifier";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       license_model =
         Prop.computed __resource_type __resource_id "license_model";
       port = Prop.computed __resource_type __resource_id "port";
       snapshot_type =
         Prop.computed __resource_type __resource_id "snapshot_type";
       source_db_cluster_snapshot_arn =
         Prop.computed __resource_type __resource_id
           "source_db_cluster_snapshot_arn";
       status = Prop.computed __resource_type __resource_id "status";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
