(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_pool_ui_customization = {
  client_id : string prop option; [@option]
  css : string prop option; [@option]
  id : string prop option; [@option]
  image_file : string prop option; [@option]
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool_ui_customization) -> ()

let yojson_of_aws_cognito_user_pool_ui_customization =
  (function
   | {
       client_id = v_client_id;
       css = v_css;
       id = v_id;
       image_file = v_image_file;
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
         match v_image_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_file", arg in
             bnd :: bnds
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
         match v_css with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "css", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_pool_ui_customization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool_ui_customization

[@@@deriving.end]

let aws_cognito_user_pool_ui_customization ?client_id ?css ?id
    ?image_file ~user_pool_id () :
    aws_cognito_user_pool_ui_customization =
  { client_id; css; id; image_file; user_pool_id }

type t = {
  client_id : string prop;
  creation_date : string prop;
  css : string prop;
  css_version : string prop;
  id : string prop;
  image_file : string prop;
  image_url : string prop;
  last_modified_date : string prop;
  user_pool_id : string prop;
}

let make ?client_id ?css ?id ?image_file ~user_pool_id __id =
  let __type = "aws_cognito_user_pool_ui_customization" in
  let __attrs =
    ({
       client_id = Prop.computed __type __id "client_id";
       creation_date = Prop.computed __type __id "creation_date";
       css = Prop.computed __type __id "css";
       css_version = Prop.computed __type __id "css_version";
       id = Prop.computed __type __id "id";
       image_file = Prop.computed __type __id "image_file";
       image_url = Prop.computed __type __id "image_url";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool_ui_customization
        (aws_cognito_user_pool_ui_customization ?client_id ?css ?id
           ?image_file ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?client_id ?css ?id ?image_file ~user_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?client_id ?css ?id ?image_file ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
