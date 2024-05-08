(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scope = {
  scope_description : string prop;
  scope_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scope) -> ()

let yojson_of_scope =
  (function
   | {
       scope_description = v_scope_description;
       scope_name = v_scope_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope_name in
         ("scope_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scope_description
         in
         ("scope_description", arg) :: bnds
       in
       `Assoc bnds
    : scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope

[@@@deriving.end]

type aws_cognito_resource_server = {
  id : string prop option; [@option]
  identifier : string prop;
  name : string prop;
  user_pool_id : string prop;
  scope : scope list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_resource_server) -> ()

let yojson_of_aws_cognito_resource_server =
  (function
   | {
       id = v_id;
       identifier = v_identifier;
       name = v_name;
       user_pool_id = v_user_pool_id;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scope then bnds
         else
           let arg = (yojson_of_list yojson_of_scope) v_scope in
           let bnd = "scope", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
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
    : aws_cognito_resource_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_resource_server

[@@@deriving.end]

let scope ~scope_description ~scope_name () : scope =
  { scope_description; scope_name }

let aws_cognito_resource_server ?id ~identifier ~name ~user_pool_id
    ~scope () : aws_cognito_resource_server =
  { id; identifier; name; user_pool_id; scope }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
