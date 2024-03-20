(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_in_group = {
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  user_pool_id : string prop;  (** user_pool_id *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_cognito_user_in_group *)

let aws_cognito_user_in_group ?id ~group_name ~user_pool_id ~username
    () : aws_cognito_user_in_group =
  { group_name; id; user_pool_id; username }

type t = {
  group_name : string prop;
  id : string prop;
  user_pool_id : string prop;
  username : string prop;
}

let make ?id ~group_name ~user_pool_id ~username __id =
  let __type = "aws_cognito_user_in_group" in
  let __attrs =
    ({
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_in_group
        (aws_cognito_user_in_group ?id ~group_name ~user_pool_id
           ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_name ~user_pool_id ~username __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~group_name ~user_pool_id ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
