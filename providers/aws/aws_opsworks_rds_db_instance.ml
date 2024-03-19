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
    ~rds_db_instance_arn ~stack_id () : aws_opsworks_rds_db_instance
    =
  { db_password; db_user; id; rds_db_instance_arn; stack_id }

type t = {
  db_password : string prop;
  db_user : string prop;
  id : string prop;
  rds_db_instance_arn : string prop;
  stack_id : string prop;
}

let register ?tf_module ?id ~db_password ~db_user
    ~rds_db_instance_arn ~stack_id __resource_id =
  let __resource_type = "aws_opsworks_rds_db_instance" in
  let __resource =
    aws_opsworks_rds_db_instance ?id ~db_password ~db_user
      ~rds_db_instance_arn ~stack_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_rds_db_instance __resource);
  let __resource_attributes =
    ({
       db_password =
         Prop.computed __resource_type __resource_id "db_password";
       db_user =
         Prop.computed __resource_type __resource_id "db_user";
       id = Prop.computed __resource_type __resource_id "id";
       rds_db_instance_arn =
         Prop.computed __resource_type __resource_id
           "rds_db_instance_arn";
       stack_id =
         Prop.computed __resource_type __resource_id "stack_id";
     }
      : t)
  in
  __resource_attributes
