(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_redshift_cluster_iam_roles = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  default_iam_role_arn : string prop option; [@option]
      (** default_iam_role_arn *)
  iam_role_arns : string prop list option; [@option]
      (** iam_role_arns *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_cluster_iam_roles *)

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
