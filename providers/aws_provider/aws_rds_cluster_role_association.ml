(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_rds_cluster_role_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_role_association__timeouts *)

type aws_rds_cluster_role_association = {
  db_cluster_identifier : string;  (** db_cluster_identifier *)
  feature_name : string;  (** feature_name *)
  role_arn : string;  (** role_arn *)
  timeouts : aws_rds_cluster_role_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster_role_association *)

let aws_rds_cluster_role_association ?timeouts ~db_cluster_identifier
    ~feature_name ~role_arn __resource_id =
  let __resource_type = "aws_rds_cluster_role_association" in
  let __resource =
    { db_cluster_identifier; feature_name; role_arn; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_role_association __resource);
  ()
