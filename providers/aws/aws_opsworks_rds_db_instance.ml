(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~db_password ~db_user ~rds_db_instance_arn ~stack_id
    __id =
  let __type = "aws_opsworks_rds_db_instance" in
  let __attrs =
    ({
       db_password = Prop.computed __type __id "db_password";
       db_user = Prop.computed __type __id "db_user";
       id = Prop.computed __type __id "id";
       rds_db_instance_arn =
         Prop.computed __type __id "rds_db_instance_arn";
       stack_id = Prop.computed __type __id "stack_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_rds_db_instance
        (aws_opsworks_rds_db_instance ?id ~db_password ~db_user
           ~rds_db_instance_arn ~stack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~db_password ~db_user
    ~rds_db_instance_arn ~stack_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~db_password ~db_user ~rds_db_instance_arn ~stack_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
