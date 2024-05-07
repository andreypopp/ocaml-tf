(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors = {
  allow_credentials : bool prop;
  allow_headers : string prop list;
  allow_methods : string prop list;
  allow_origins : string prop list;
  expose_headers : string prop list;
  max_age : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors) -> ()

let yojson_of_cors =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_expose_headers
         in
         ("expose_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allow_origins
         in
         ("allow_origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allow_methods
         in
         ("allow_methods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allow_headers
         in
         ("allow_headers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors

[@@@deriving.end]

type aws_lambda_function_url = {
  function_name : string prop;
  id : string prop option; [@option]
  qualifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_function_url) -> ()

let yojson_of_aws_lambda_function_url =
  (function
   | {
       function_name = v_function_name;
       id = v_id;
       qualifier = v_qualifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_qualifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qualifier", arg in
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_function_url -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_function_url

[@@@deriving.end]

let aws_lambda_function_url ?id ?qualifier ~function_name () :
    aws_lambda_function_url =
  { function_name; id; qualifier }

type t = {
  tf_name : string;
  authorization_type : string prop;
  cors : cors list prop;
  creation_time : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_url : string prop;
  id : string prop;
  invoke_mode : string prop;
  last_modified_time : string prop;
  qualifier : string prop;
  url_id : string prop;
}

let make ?id ?qualifier ~function_name __id =
  let __type = "aws_lambda_function_url" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_type =
         Prop.computed __type __id "authorization_type";
       cors = Prop.computed __type __id "cors";
       creation_time = Prop.computed __type __id "creation_time";
       function_arn = Prop.computed __type __id "function_arn";
       function_name = Prop.computed __type __id "function_name";
       function_url = Prop.computed __type __id "function_url";
       id = Prop.computed __type __id "id";
       invoke_mode = Prop.computed __type __id "invoke_mode";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       qualifier = Prop.computed __type __id "qualifier";
       url_id = Prop.computed __type __id "url_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_function_url
        (aws_lambda_function_url ?id ?qualifier ~function_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?qualifier ~function_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?qualifier ~function_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
