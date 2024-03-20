(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloud9_environment_membership = {
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_membership *)

let aws_cloud9_environment_membership ?id ~environment_id
    ~permissions ~user_arn () : aws_cloud9_environment_membership =
  { environment_id; id; permissions; user_arn }

type t = {
  environment_id : string prop;
  id : string prop;
  permissions : string prop;
  user_arn : string prop;
  user_id : string prop;
}

let make ?id ~environment_id ~permissions ~user_arn __id =
  let __type = "aws_cloud9_environment_membership" in
  let __attrs =
    ({
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       permissions = Prop.computed __type __id "permissions";
       user_arn = Prop.computed __type __id "user_arn";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloud9_environment_membership
        (aws_cloud9_environment_membership ?id ~environment_id
           ~permissions ~user_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~environment_id ~permissions ~user_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~environment_id ~permissions ~user_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
