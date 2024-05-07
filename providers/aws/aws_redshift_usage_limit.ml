(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_usage_limit = {
  amount : float prop;
  breach_action : string prop option; [@option]
  cluster_identifier : string prop;
  feature_type : string prop;
  id : string prop option; [@option]
  limit_type : string prop;
  period : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_usage_limit) -> ()

let yojson_of_aws_redshift_usage_limit =
  (function
   | {
       amount = v_amount;
       breach_action = v_breach_action;
       cluster_identifier = v_cluster_identifier;
       feature_type = v_feature_type;
       id = v_id;
       limit_type = v_limit_type;
       period = v_period;
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
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_limit_type in
         ("limit_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_feature_type in
         ("feature_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_breach_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "breach_action", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_amount in
         ("amount", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_usage_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_usage_limit

[@@@deriving.end]

let aws_redshift_usage_limit ?breach_action ?id ?period ?tags
    ?tags_all ~amount ~cluster_identifier ~feature_type ~limit_type
    () : aws_redshift_usage_limit =
  {
    amount;
    breach_action;
    cluster_identifier;
    feature_type;
    id;
    limit_type;
    period;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  cluster_identifier : string prop;
  feature_type : string prop;
  id : string prop;
  limit_type : string prop;
  period : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?breach_action ?id ?period ?tags ?tags_all ~amount
    ~cluster_identifier ~feature_type ~limit_type __id =
  let __type = "aws_redshift_usage_limit" in
  let __attrs =
    ({
       tf_name = __id;
       amount = Prop.computed __type __id "amount";
       arn = Prop.computed __type __id "arn";
       breach_action = Prop.computed __type __id "breach_action";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       feature_type = Prop.computed __type __id "feature_type";
       id = Prop.computed __type __id "id";
       limit_type = Prop.computed __type __id "limit_type";
       period = Prop.computed __type __id "period";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_usage_limit
        (aws_redshift_usage_limit ?breach_action ?id ?period ?tags
           ?tags_all ~amount ~cluster_identifier ~feature_type
           ~limit_type ());
    attrs = __attrs;
  }

let register ?tf_module ?breach_action ?id ?period ?tags ?tags_all
    ~amount ~cluster_identifier ~feature_type ~limit_type __id =
  let (r : _ Tf_core.resource) =
    make ?breach_action ?id ?period ?tags ?tags_all ~amount
      ~cluster_identifier ~feature_type ~limit_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
