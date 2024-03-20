(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  precedence : float prop option; [@option]  (** precedence *)
  role_arn : string prop option; [@option]  (** role_arn *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_group *)

let aws_cognito_user_group ?description ?id ?precedence ?role_arn
    ~name ~user_pool_id () : aws_cognito_user_group =
  { description; id; name; precedence; role_arn; user_pool_id }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  precedence : float prop;
  role_arn : string prop;
  user_pool_id : string prop;
}

let make ?description ?id ?precedence ?role_arn ~name ~user_pool_id
    __id =
  let __type = "aws_cognito_user_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       precedence = Prop.computed __type __id "precedence";
       role_arn = Prop.computed __type __id "role_arn";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_group
        (aws_cognito_user_group ?description ?id ?precedence
           ?role_arn ~name ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?precedence ?role_arn ~name
    ~user_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?precedence ?role_arn ~name ~user_pool_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
