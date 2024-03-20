(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?manual_snapshot_retention_period ?tags ?tags_all
    ~cluster_identifier ~snapshot_identifier __id =
  let __type = "aws_redshift_cluster_snapshot" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       manual_snapshot_retention_period =
         Prop.computed __type __id "manual_snapshot_retention_period";
       owner_account = Prop.computed __type __id "owner_account";
       snapshot_identifier =
         Prop.computed __type __id "snapshot_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_cluster_snapshot
        (aws_redshift_cluster_snapshot ?id
           ?manual_snapshot_retention_period ?tags ?tags_all
           ~cluster_identifier ~snapshot_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?manual_snapshot_retention_period ?tags
    ?tags_all ~cluster_identifier ~snapshot_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?manual_snapshot_retention_period ?tags ?tags_all
      ~cluster_identifier ~snapshot_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
