(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_redshift_cluster_iam_roles = {
  cluster_identifier : string prop;
  default_iam_role_arn : string prop option; [@option]
  iam_role_arns : string prop list option; [@option]
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_cluster_iam_roles) -> ()

let yojson_of_aws_redshift_cluster_iam_roles =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
       default_iam_role_arn = v_default_iam_role_arn;
       iam_role_arns = v_iam_role_arns;
       id = v_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_iam_role_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "iam_role_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_cluster_iam_roles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_cluster_iam_roles

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_redshift_cluster_iam_roles ?default_iam_role_arn
    ?iam_role_arns ?id ?timeouts ~cluster_identifier () :
    aws_redshift_cluster_iam_roles =
  {
    cluster_identifier;
    default_iam_role_arn;
    iam_role_arns;
    id;
    timeouts;
  }

type t = {
  cluster_identifier : string prop;
  default_iam_role_arn : string prop;
  iam_role_arns : string list prop;
  id : string prop;
}

let make ?default_iam_role_arn ?iam_role_arns ?id ?timeouts
    ~cluster_identifier __id =
  let __type = "aws_redshift_cluster_iam_roles" in
  let __attrs =
    ({
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       default_iam_role_arn =
         Prop.computed __type __id "default_iam_role_arn";
       iam_role_arns = Prop.computed __type __id "iam_role_arns";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_cluster_iam_roles
        (aws_redshift_cluster_iam_roles ?default_iam_role_arn
           ?iam_role_arns ?id ?timeouts ~cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?default_iam_role_arn ?iam_role_arns ?id
    ?timeouts ~cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?default_iam_role_arn ?iam_role_arns ?id ?timeouts
      ~cluster_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
