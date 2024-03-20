(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_permission_set_inline_policy = {
  id : string prop option; [@option]  (** id *)
  inline_policy : string prop;  (** inline_policy *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set_inline_policy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
    ~inline_policy ~instance_arn ~permission_set_arn () :
    aws_ssoadmin_permission_set_inline_policy =
  { id; inline_policy; instance_arn; permission_set_arn; timeouts }

type t = {
  id : string prop;
  inline_policy : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

let make ?id ?timeouts ~inline_policy ~instance_arn
    ~permission_set_arn __id =
  let __type = "aws_ssoadmin_permission_set_inline_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       inline_policy = Prop.computed __type __id "inline_policy";
       instance_arn = Prop.computed __type __id "instance_arn";
       permission_set_arn =
         Prop.computed __type __id "permission_set_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_permission_set_inline_policy
        (aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
           ~inline_policy ~instance_arn ~permission_set_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~inline_policy ~instance_arn
    ~permission_set_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~inline_policy ~instance_arn
      ~permission_set_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
