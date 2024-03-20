(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opsworks_rds_db_instance = {
  db_password : string prop;
  db_user : string prop;
  id : string prop option; [@option]
  rds_db_instance_arn : string prop;
  stack_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_rds_db_instance) -> ()

let yojson_of_aws_opsworks_rds_db_instance =
  (function
   | {
       db_password = v_db_password;
       db_user = v_db_user;
       id = v_id;
       rds_db_instance_arn = v_rds_db_instance_arn;
       stack_id = v_stack_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_id in
         ("stack_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rds_db_instance_arn
         in
         ("rds_db_instance_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_db_user in
         ("db_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_db_password in
         ("db_password", arg) :: bnds
       in
       `Assoc bnds
    : aws_opsworks_rds_db_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_rds_db_instance

[@@@deriving.end]

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
