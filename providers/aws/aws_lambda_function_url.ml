(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  allow_origins : string prop list option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : float prop option; [@option]
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
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_lambda_function_url = {
  authorization_type : string prop;
  function_name : string prop;
  id : string prop option; [@option]
  invoke_mode : string prop option; [@option]
  qualifier : string prop option; [@option]
  cors : cors list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_function_url) -> ()

let yojson_of_aws_lambda_function_url =
  (function
   | {
       authorization_type = v_authorization_type;
       function_name = v_function_name;
       id = v_id;
       invoke_mode = v_invoke_mode;
       qualifier = v_qualifier;
       cors = v_cors;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg = (yojson_of_list yojson_of_cors) v_cors in
           let bnd = "cors", arg in
           bnd :: bnds
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
         match v_invoke_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "invoke_mode", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_type
         in
         ("authorization_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_function_url -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_function_url

[@@@deriving.end]

let cors ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origins ?expose_headers ?max_age () : cors =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origins;
    expose_headers;
    max_age;
  }

let timeouts ?create () : timeouts = { create }

let aws_lambda_function_url ?id ?invoke_mode ?qualifier ?(cors = [])
    ?timeouts ~authorization_type ~function_name () :
    aws_lambda_function_url =
  {
    authorization_type;
    function_name;
    id;
    invoke_mode;
    qualifier;
    cors;
    timeouts;
  }

type t = {
  tf_name : string;
  authorization_type : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_url : string prop;
  id : string prop;
  invoke_mode : string prop;
  qualifier : string prop;
  url_id : string prop;
}

let make ?id ?invoke_mode ?qualifier ?(cors = []) ?timeouts
    ~authorization_type ~function_name __id =
  let __type = "aws_lambda_function_url" in
  let __attrs =
    ({
       tf_name = __id;
       authorization_type =
         Prop.computed __type __id "authorization_type";
       function_arn = Prop.computed __type __id "function_arn";
       function_name = Prop.computed __type __id "function_name";
       function_url = Prop.computed __type __id "function_url";
       id = Prop.computed __type __id "id";
       invoke_mode = Prop.computed __type __id "invoke_mode";
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
        (aws_lambda_function_url ?id ?invoke_mode ?qualifier ~cors
           ?timeouts ~authorization_type ~function_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?invoke_mode ?qualifier ?(cors = [])
    ?timeouts ~authorization_type ~function_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?invoke_mode ?qualifier ~cors ?timeouts
      ~authorization_type ~function_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
