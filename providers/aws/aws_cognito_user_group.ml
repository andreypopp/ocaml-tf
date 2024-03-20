(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_group = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  precedence : float prop option; [@option]
  role_arn : string prop option; [@option]
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_group) -> ()

let yojson_of_aws_cognito_user_group =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       precedence = v_precedence;
       role_arn = v_role_arn;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_precedence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "precedence", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_group

[@@@deriving.end]

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
