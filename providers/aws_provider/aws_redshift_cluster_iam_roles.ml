(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_cluster_iam_roles__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_redshift_cluster_iam_roles__timeouts *)

type aws_redshift_cluster_iam_roles = {
  cluster_identifier : string;  (** cluster_identifier *)
  timeouts : aws_redshift_cluster_iam_roles__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshift_cluster_iam_roles *)

let aws_redshift_cluster_iam_roles ?timeouts ~cluster_identifier
    __resource_id =
  let __resource_type = "aws_redshift_cluster_iam_roles" in
  let __resource = { cluster_identifier; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_cluster_iam_roles __resource);
  ()
