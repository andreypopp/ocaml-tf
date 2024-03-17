(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_rds_db_instance = {
  db_password : string prop;  (** db_password *)
  db_user : string prop;  (** db_user *)
  id : string prop option; [@option]  (** id *)
  rds_db_instance_arn : string prop;  (** rds_db_instance_arn *)
  stack_id : string prop;  (** stack_id *)
}
[@@deriving yojson_of]
(** aws_opsworks_rds_db_instance *)

let aws_opsworks_rds_db_instance ?id ~db_password ~db_user
    ~rds_db_instance_arn ~stack_id __resource_id =
  let __resource_type = "aws_opsworks_rds_db_instance" in
  let __resource =
    { db_password; db_user; id; rds_db_instance_arn; stack_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_rds_db_instance __resource);
  ()
