(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_instance_role_association = {
  db_instance_identifier : string;  (** db_instance_identifier *)
  feature_name : string;  (** feature_name *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_db_instance_role_association *)

let aws_db_instance_role_association ~db_instance_identifier
    ~feature_name ~role_arn __resource_id =
  let __resource_type = "aws_db_instance_role_association" in
  let __resource =
    { db_instance_identifier; feature_name; role_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_instance_role_association __resource);
  ()
