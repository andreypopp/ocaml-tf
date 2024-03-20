(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_pool_clients = {
  id : string prop option; [@option]
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool_clients) -> ()

let yojson_of_aws_cognito_user_pool_clients =
  (function
   | { id = v_id; user_pool_id = v_user_pool_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
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
    : aws_cognito_user_pool_clients ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool_clients

[@@@deriving.end]

let aws_cognito_user_pool_clients ?id ~user_pool_id () :
    aws_cognito_user_pool_clients =
  { id; user_pool_id }

type t = {
  client_ids : string list prop;
  client_names : string list prop;
  id : string prop;
  user_pool_id : string prop;
}

let make ?id ~user_pool_id __id =
  let __type = "aws_cognito_user_pool_clients" in
  let __attrs =
    ({
       client_ids = Prop.computed __type __id "client_ids";
       client_names = Prop.computed __type __id "client_names";
       id = Prop.computed __type __id "id";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool_clients
        (aws_cognito_user_pool_clients ?id ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~user_pool_id __id =
  let (r : _ Tf_core.resource) = make ?id ~user_pool_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
