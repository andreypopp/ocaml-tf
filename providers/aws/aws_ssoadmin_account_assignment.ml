(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ssoadmin_account_assignment = {
  id : string prop option; [@option]
  instance_arn : string prop;
  permission_set_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  target_id : string prop;
  target_type : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_account_assignment) -> ()

let yojson_of_aws_ssoadmin_account_assignment =
  (function
   | {
       id = v_id;
       instance_arn = v_instance_arn;
       permission_set_arn = v_permission_set_arn;
       principal_id = v_principal_id;
       principal_type = v_principal_type;
       target_id = v_target_id;
       target_type = v_target_type;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_target_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_id in
         ("target_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_principal_type
         in
         ("principal_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_permission_set_arn
         in
         ("permission_set_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_account_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_account_assignment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_account_assignment ?id ?target_type ?timeouts
    ~instance_arn ~permission_set_arn ~principal_id ~principal_type
    ~target_id () : aws_ssoadmin_account_assignment =
  {
    id;
    instance_arn;
    permission_set_arn;
    principal_id;
    principal_type;
    target_id;
    target_type;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  target_id : string prop;
  target_type : string prop;
}

let make ?id ?target_type ?timeouts ~instance_arn ~permission_set_arn
    ~principal_id ~principal_type ~target_id __id =
  let __type = "aws_ssoadmin_account_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       permission_set_arn =
         Prop.computed __type __id "permission_set_arn";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
       target_id = Prop.computed __type __id "target_id";
       target_type = Prop.computed __type __id "target_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_account_assignment
        (aws_ssoadmin_account_assignment ?id ?target_type ?timeouts
           ~instance_arn ~permission_set_arn ~principal_id
           ~principal_type ~target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?target_type ?timeouts ~instance_arn
    ~permission_set_arn ~principal_id ~principal_type ~target_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?target_type ?timeouts ~instance_arn ~permission_set_arn
      ~principal_id ~principal_type ~target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
