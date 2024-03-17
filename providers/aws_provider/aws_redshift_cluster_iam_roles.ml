(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_cluster_iam_roles__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster_iam_roles__timeouts *)

type aws_redshift_cluster_iam_roles = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  default_iam_role_arn : string prop option; [@option]
      (** default_iam_role_arn *)
  iam_role_arns : string prop list option; [@option]
      (** iam_role_arns *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_redshift_cluster_iam_roles__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_cluster_iam_roles *)

let aws_redshift_cluster_iam_roles ?default_iam_role_arn
    ?iam_role_arns ?id ?timeouts ~cluster_identifier __resource_id =
  let __resource_type = "aws_redshift_cluster_iam_roles" in
  let __resource =
    {
      cluster_identifier;
      default_iam_role_arn;
      iam_role_arns;
      id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster_iam_roles __resource);
  ()
