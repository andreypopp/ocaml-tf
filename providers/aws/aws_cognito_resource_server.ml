(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scope = {
  scope_description : string prop;  (** scope_description *)
  scope_name : string prop;  (** scope_name *)
}
[@@deriving yojson_of]
(** scope *)

type aws_cognito_resource_server = {
  id : string prop option; [@option]  (** id *)
  identifier : string prop;  (** identifier *)
  name : string prop;  (** name *)
  user_pool_id : string prop;  (** user_pool_id *)
  scope : scope list;
}
[@@deriving yojson_of]
(** aws_cognito_resource_server *)

let scope ~scope_description ~scope_name () : scope =
  { scope_description; scope_name }

let aws_cognito_resource_server ?id ~identifier ~name ~user_pool_id
    ~scope () : aws_cognito_resource_server =
  { id; identifier; name; user_pool_id; scope }

type t = {
  id : string prop;
  identifier : string prop;
  name : string prop;
  scope_identifiers : string list prop;
  user_pool_id : string prop;
}

let make ?id ~identifier ~name ~user_pool_id ~scope __id =
  let __type = "aws_cognito_resource_server" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       name = Prop.computed __type __id "name";
       scope_identifiers =
         Prop.computed __type __id "scope_identifiers";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_resource_server
        (aws_cognito_resource_server ?id ~identifier ~name
           ~user_pool_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~identifier ~name ~user_pool_id ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~identifier ~name ~user_pool_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
