(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_copy = {
  cluster_identifier : string prop;
  destination_region : string prop;
  manual_snapshot_retention_period : float prop option; [@option]
  retention_period : float prop option; [@option]
  snapshot_copy_grant_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_snapshot_copy) -> ()

let yojson_of_aws_redshift_snapshot_copy =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
       destination_region = v_destination_region;
       manual_snapshot_retention_period =
         v_manual_snapshot_retention_period;
       retention_period = v_retention_period;
       snapshot_copy_grant_name = v_snapshot_copy_grant_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_snapshot_copy_grant_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_copy_grant_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_destination_region
         in
         ("destination_region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_snapshot_copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_snapshot_copy

[@@@deriving.end]

let aws_redshift_snapshot_copy ?manual_snapshot_retention_period
    ?retention_period ?snapshot_copy_grant_name ~cluster_identifier
    ~destination_region () : aws_redshift_snapshot_copy =
  {
    cluster_identifier;
    destination_region;
    manual_snapshot_retention_period;
    retention_period;
    snapshot_copy_grant_name;
  }

type t = {
  tf_name : string;
  cluster_identifier : string prop;
  destination_region : string prop;
  id : string prop;
  manual_snapshot_retention_period : float prop;
  retention_period : float prop;
  snapshot_copy_grant_name : string prop;
}

let make ?manual_snapshot_retention_period ?retention_period
    ?snapshot_copy_grant_name ~cluster_identifier ~destination_region
    __id =
  let __type = "aws_redshift_snapshot_copy" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       destination_region =
         Prop.computed __type __id "destination_region";
       id = Prop.computed __type __id "id";
       manual_snapshot_retention_period =
         Prop.computed __type __id "manual_snapshot_retention_period";
       retention_period =
         Prop.computed __type __id "retention_period";
       snapshot_copy_grant_name =
         Prop.computed __type __id "snapshot_copy_grant_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_snapshot_copy
        (aws_redshift_snapshot_copy ?manual_snapshot_retention_period
           ?retention_period ?snapshot_copy_grant_name
           ~cluster_identifier ~destination_region ());
    attrs = __attrs;
  }

let register ?tf_module ?manual_snapshot_retention_period
    ?retention_period ?snapshot_copy_grant_name ~cluster_identifier
    ~destination_region __id =
  let (r : _ Tf_core.resource) =
    make ?manual_snapshot_retention_period ?retention_period
      ?snapshot_copy_grant_name ~cluster_identifier
      ~destination_region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
