(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecs_account_setting_default = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_account_setting_default *)

let aws_ecs_account_setting_default ?id ~name ~value () :
    aws_ecs_account_setting_default =
  { id; name; value }

type t = {
  id : string prop;
  name : string prop;
  principal_arn : string prop;
  value : string prop;
}

let make ?id ~name ~value __id =
  let __type = "aws_ecs_account_setting_default" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_arn = Prop.computed __type __id "principal_arn";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_account_setting_default
        (aws_ecs_account_setting_default ?id ~name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~value __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~value __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
