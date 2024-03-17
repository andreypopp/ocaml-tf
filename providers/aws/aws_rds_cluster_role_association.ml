(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_cluster_role_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_role_association__timeouts *)

type aws_rds_cluster_role_association = {
  db_cluster_identifier : string prop;  (** db_cluster_identifier *)
  feature_name : string prop;  (** feature_name *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  timeouts : aws_rds_cluster_role_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_cluster_role_association *)

type t = {
  db_cluster_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

let aws_rds_cluster_role_association ?id ?timeouts
    ~db_cluster_identifier ~feature_name ~role_arn __resource_id =
  let __resource_type = "aws_rds_cluster_role_association" in
  let __resource =
    ({ db_cluster_identifier; feature_name; id; role_arn; timeouts }
      : aws_rds_cluster_role_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_role_association __resource);
  let __resource_attributes =
    ({
       db_cluster_identifier =
         Prop.computed __resource_type __resource_id
           "db_cluster_identifier";
       feature_name =
         Prop.computed __resource_type __resource_id "feature_name";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
