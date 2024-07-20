(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_authorizer = {
  authorizer_function_arn : string prop;
  enable_caching_for_http : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  signing_disabled : bool prop option; [@option]
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  token_key_name : string prop option; [@option]
  token_signing_public_keys : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_authorizer) -> ()

let yojson_of_aws_iot_authorizer =
  (function
   | {
       authorizer_function_arn = v_authorizer_function_arn;
       enable_caching_for_http = v_enable_caching_for_http;
       id = v_id;
       name = v_name;
       signing_disabled = v_signing_disabled;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
       token_key_name = v_token_key_name;
       token_signing_public_keys = v_token_signing_public_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_signing_public_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "token_signing_public_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_signing_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "signing_disabled", arg in
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
         match v_enable_caching_for_http with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_caching_for_http", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorizer_function_arn
         in
         ("authorizer_function_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_iot_authorizer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_authorizer

[@@@deriving.end]

let aws_iot_authorizer ?enable_caching_for_http ?id ?signing_disabled
    ?status ?tags ?tags_all ?token_key_name
    ?token_signing_public_keys ~authorizer_function_arn ~name () :
    aws_iot_authorizer =
  {
    authorizer_function_arn;
    enable_caching_for_http;
    id;
    name;
    signing_disabled;
    status;
    tags;
    tags_all;
    token_key_name;
    token_signing_public_keys;
  }

type t = {
  tf_name : string;
  arn : string prop;
  authorizer_function_arn : string prop;
  enable_caching_for_http : bool prop;
  id : string prop;
  name : string prop;
  signing_disabled : bool prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  token_key_name : string prop;
  token_signing_public_keys : (string * string) list prop;
}

let make ?enable_caching_for_http ?id ?signing_disabled ?status ?tags
    ?tags_all ?token_key_name ?token_signing_public_keys
    ~authorizer_function_arn ~name __id =
  let __type = "aws_iot_authorizer" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authorizer_function_arn =
         Prop.computed __type __id "authorizer_function_arn";
       enable_caching_for_http =
         Prop.computed __type __id "enable_caching_for_http";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       signing_disabled =
         Prop.computed __type __id "signing_disabled";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       token_key_name = Prop.computed __type __id "token_key_name";
       token_signing_public_keys =
         Prop.computed __type __id "token_signing_public_keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_authorizer
        (aws_iot_authorizer ?enable_caching_for_http ?id
           ?signing_disabled ?status ?tags ?tags_all ?token_key_name
           ?token_signing_public_keys ~authorizer_function_arn ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_caching_for_http ?id
    ?signing_disabled ?status ?tags ?tags_all ?token_key_name
    ?token_signing_public_keys ~authorizer_function_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enable_caching_for_http ?id ?signing_disabled ?status ?tags
      ?tags_all ?token_key_name ?token_signing_public_keys
      ~authorizer_function_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
