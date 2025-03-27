(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_login = {
  backend : string prop option; [@option]
  iam_http_request_method : string prop option; [@option]
  iam_request_body : string prop option; [@option]
  iam_request_headers : string prop option; [@option]
  iam_request_url : string prop option; [@option]
  id : string prop option; [@option]
  identity : string prop option; [@option]
  namespace : string prop option; [@option]
  nonce : string prop option; [@option]
  pkcs7 : string prop option; [@option]
  role : string prop option; [@option]
  signature : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_login) -> ()

let yojson_of_vault_aws_auth_backend_login =
  (function
   | {
       backend = v_backend;
       iam_http_request_method = v_iam_http_request_method;
       iam_request_body = v_iam_request_body;
       iam_request_headers = v_iam_request_headers;
       iam_request_url = v_iam_request_url;
       id = v_id;
       identity = v_identity;
       namespace = v_namespace;
       nonce = v_nonce;
       pkcs7 = v_pkcs7;
       role = v_role;
       signature = v_signature;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_signature with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "signature", arg in
         bnd :: bnds
     in
     let bnds =
       match v_role with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pkcs7 with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pkcs7", arg in
         bnd :: bnds
     in
     let bnds =
       match v_nonce with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "nonce", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity", arg in
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
       match v_iam_request_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_request_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_request_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_request_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_request_body with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_request_body", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_http_request_method with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_http_request_method", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_aws_auth_backend_login -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_login

[@@@deriving.end]

let vault_aws_auth_backend_login ?backend ?iam_http_request_method ?iam_request_body ?iam_request_headers
  ?iam_request_url ?id ?identity ?namespace ?nonce ?pkcs7 ?role ?signature () =
  ({
     backend;
     iam_http_request_method;
     iam_request_body;
     iam_request_headers;
     iam_request_url;
     id;
     identity;
     namespace;
     nonce;
     pkcs7;
     role;
     signature;
   }
    : vault_aws_auth_backend_login)

type t = {
  tf_name : string;
  accessor : string prop;
  auth_type : string prop;
  backend : string prop;
  client_token : string prop;
  iam_http_request_method : string prop;
  iam_request_body : string prop;
  iam_request_headers : string prop;
  iam_request_url : string prop;
  id : string prop;
  identity : string prop;
  lease_duration : float prop;
  lease_start_time : string prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  nonce : string prop;
  pkcs7 : string prop;
  policies : string list prop;
  renewable : bool prop;
  role : string prop;
  signature : string prop;
}

let make ?backend ?iam_http_request_method ?iam_request_body ?iam_request_headers ?iam_request_url ?id ?identity
  ?namespace ?nonce ?pkcs7 ?role ?signature __id =
  let __type = "vault_aws_auth_backend_login" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       auth_type = Prop.computed __type __id "auth_type";
       backend = Prop.computed __type __id "backend";
       client_token = Prop.computed __type __id "client_token";
       iam_http_request_method = Prop.computed __type __id "iam_http_request_method";
       iam_request_body = Prop.computed __type __id "iam_request_body";
       iam_request_headers = Prop.computed __type __id "iam_request_headers";
       iam_request_url = Prop.computed __type __id "iam_request_url";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       lease_duration = Prop.computed __type __id "lease_duration";
       lease_start_time = Prop.computed __type __id "lease_start_time";
       metadata = Prop.computed __type __id "metadata";
       namespace = Prop.computed __type __id "namespace";
       nonce = Prop.computed __type __id "nonce";
       pkcs7 = Prop.computed __type __id "pkcs7";
       policies = Prop.computed __type __id "policies";
       renewable = Prop.computed __type __id "renewable";
       role = Prop.computed __type __id "role";
       signature = Prop.computed __type __id "signature";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_login
        (vault_aws_auth_backend_login ?backend ?iam_http_request_method ?iam_request_body ?iam_request_headers
           ?iam_request_url ?id ?identity ?namespace ?nonce ?pkcs7 ?role ?signature ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?iam_http_request_method ?iam_request_body ?iam_request_headers ?iam_request_url ?id
  ?identity ?namespace ?nonce ?pkcs7 ?role ?signature __id =
  let (r : _ Tf_core.resource) =
    make ?backend ?iam_http_request_method ?iam_request_body ?iam_request_headers ?iam_request_url ?id ?identity
      ?namespace ?nonce ?pkcs7 ?role ?signature __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
