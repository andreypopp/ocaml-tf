(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_account_assignment = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
  target_id : string prop;  (** target_id *)
  target_type : string prop option; [@option]  (** target_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_account_assignment *)

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
