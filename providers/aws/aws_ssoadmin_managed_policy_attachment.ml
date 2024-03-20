(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_managed_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  managed_policy_arn : string prop;  (** managed_policy_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_managed_policy_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_managed_policy_attachment ?id ?timeouts
    ~instance_arn ~managed_policy_arn ~permission_set_arn () :
    aws_ssoadmin_managed_policy_attachment =
  {
    id;
    instance_arn;
    managed_policy_arn;
    permission_set_arn;
    timeouts;
  }

type t = {
  id : string prop;
  instance_arn : string prop;
  managed_policy_arn : string prop;
  managed_policy_name : string prop;
  permission_set_arn : string prop;
}

let make ?id ?timeouts ~instance_arn ~managed_policy_arn
    ~permission_set_arn __id =
  let __type = "aws_ssoadmin_managed_policy_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       managed_policy_arn =
         Prop.computed __type __id "managed_policy_arn";
       managed_policy_name =
         Prop.computed __type __id "managed_policy_name";
       permission_set_arn =
         Prop.computed __type __id "permission_set_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_managed_policy_attachment
        (aws_ssoadmin_managed_policy_attachment ?id ?timeouts
           ~instance_arn ~managed_policy_arn ~permission_set_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~instance_arn
    ~managed_policy_arn ~permission_set_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~instance_arn ~managed_policy_arn
      ~permission_set_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
