(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?default_iam_role_arn ?iam_role_arns ?id
    ?timeouts ~cluster_identifier __resource_id =
  let __resource_type = "aws_redshift_cluster_iam_roles" in
  let __resource =
    aws_redshift_cluster_iam_roles ?default_iam_role_arn
      ?iam_role_arns ?id ?timeouts ~cluster_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster_iam_roles __resource);
  let __resource_attributes =
    ({
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       default_iam_role_arn =
         Prop.computed __resource_type __resource_id
           "default_iam_role_arn";
       iam_role_arns =
         Prop.computed __resource_type __resource_id "iam_role_arns";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
