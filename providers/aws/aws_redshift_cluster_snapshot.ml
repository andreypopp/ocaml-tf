(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_cluster_snapshot = {
  cluster_identifier : string prop;
  id : string prop option; [@option]
  manual_snapshot_retention_period : float prop option; [@option]
  snapshot_identifier : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_cluster_snapshot) -> ()

let yojson_of_aws_redshift_cluster_snapshot =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
       id = v_id;
       manual_snapshot_retention_period =
         v_manual_snapshot_retention_period;
       snapshot_identifier = v_snapshot_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string v_snapshot_identifier
         in
         ("snapshot_identifier", arg) :: bnds
       in
       let bnds =
         match v_manual_snapshot_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "manual_snapshot_retention_period", arg in
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
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_cluster_snapshot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_cluster_snapshot

[@@@deriving.end]

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
