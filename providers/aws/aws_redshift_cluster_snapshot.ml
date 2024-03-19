(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_cluster_snapshot = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  manual_snapshot_retention_period : float prop option; [@option]
      (** manual_snapshot_retention_period *)
  snapshot_identifier : string prop;  (** snapshot_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster_snapshot *)

let aws_redshift_cluster_snapshot ?id
    ?manual_snapshot_retention_period ?tags ?tags_all
    ~cluster_identifier ~snapshot_identifier () :
    aws_redshift_cluster_snapshot =
  {
    cluster_identifier;
    id;
    manual_snapshot_retention_period;
    snapshot_identifier;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  cluster_identifier : string prop;
  id : string prop;
  kms_key_id : string prop;
  manual_snapshot_retention_period : float prop;
  owner_account : string prop;
  snapshot_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?manual_snapshot_retention_period ?tags
    ?tags_all ~cluster_identifier ~snapshot_identifier __resource_id
    =
  let __resource_type = "aws_redshift_cluster_snapshot" in
  let __resource =
    aws_redshift_cluster_snapshot ?id
      ?manual_snapshot_retention_period ?tags ?tags_all
      ~cluster_identifier ~snapshot_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster_snapshot __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       manual_snapshot_retention_period =
         Prop.computed __resource_type __resource_id
           "manual_snapshot_retention_period";
       owner_account =
         Prop.computed __resource_type __resource_id "owner_account";
       snapshot_identifier =
         Prop.computed __resource_type __resource_id
           "snapshot_identifier";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
