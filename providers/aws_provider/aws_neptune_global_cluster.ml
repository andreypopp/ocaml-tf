(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_global_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_neptune_global_cluster__timeouts *)

type aws_neptune_global_cluster__global_cluster_members = {
  db_cluster_arn : string prop;  (** db_cluster_arn *)
  is_writer : bool prop;  (** is_writer *)
}
[@@deriving yojson_of]

type aws_neptune_global_cluster = {
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  global_cluster_identifier : string prop;
      (** global_cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  source_db_cluster_identifier : string prop option; [@option]
      (** source_db_cluster_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  timeouts : aws_neptune_global_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_neptune_global_cluster *)

type t = {
  arn : string prop;
  deletion_protection : bool prop;
  engine : string prop;
  engine_version : string prop;
  global_cluster_identifier : string prop;
  global_cluster_members :
    aws_neptune_global_cluster__global_cluster_members list prop;
  global_cluster_resource_id : string prop;
  id : string prop;
  source_db_cluster_identifier : string prop;
  status : string prop;
  storage_encrypted : bool prop;
}

let aws_neptune_global_cluster ?deletion_protection ?engine
    ?engine_version ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier
    __resource_id =
  let __resource_type = "aws_neptune_global_cluster" in
  let __resource =
    ({
       deletion_protection;
       engine;
       engine_version;
       global_cluster_identifier;
       id;
       source_db_cluster_identifier;
       storage_encrypted;
       timeouts;
     }
      : aws_neptune_global_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_global_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       engine = Prop.computed __resource_type __resource_id "engine";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       global_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "global_cluster_identifier";
       global_cluster_members =
         Prop.computed __resource_type __resource_id
           "global_cluster_members";
       global_cluster_resource_id =
         Prop.computed __resource_type __resource_id
           "global_cluster_resource_id";
       id = Prop.computed __resource_type __resource_id "id";
       source_db_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "source_db_cluster_identifier";
       status = Prop.computed __resource_type __resource_id "status";
       storage_encrypted =
         Prop.computed __resource_type __resource_id
           "storage_encrypted";
     }
      : t)
  in
  __resource_attributes
