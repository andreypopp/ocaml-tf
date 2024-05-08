(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trusted_token_issuer_configuration__oidc_jwt_configuration = {
  claim_attribute_path : string prop;
  identity_store_attribute_path : string prop;
  issuer_url : string prop;
  jwks_retrieval_option : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : trusted_token_issuer_configuration__oidc_jwt_configuration) ->
  ()

let yojson_of_trusted_token_issuer_configuration__oidc_jwt_configuration
    =
  (function
   | {
       claim_attribute_path = v_claim_attribute_path;
       identity_store_attribute_path =
         v_identity_store_attribute_path;
       issuer_url = v_issuer_url;
       jwks_retrieval_option = v_jwks_retrieval_option;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_jwks_retrieval_option
         in
         ("jwks_retrieval_option", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_url in
         ("issuer_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_identity_store_attribute_path
         in
         ("identity_store_attribute_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_claim_attribute_path
         in
         ("claim_attribute_path", arg) :: bnds
       in
       `Assoc bnds
    : trusted_token_issuer_configuration__oidc_jwt_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_trusted_token_issuer_configuration__oidc_jwt_configuration

[@@@deriving.end]

type trusted_token_issuer_configuration = {
  oidc_jwt_configuration :
    trusted_token_issuer_configuration__oidc_jwt_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_token_issuer_configuration) -> ()

let yojson_of_trusted_token_issuer_configuration =
  (function
   | { oidc_jwt_configuration = v_oidc_jwt_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_oidc_jwt_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trusted_token_issuer_configuration__oidc_jwt_configuration)
               v_oidc_jwt_configuration
           in
           let bnd = "oidc_jwt_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : trusted_token_issuer_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_token_issuer_configuration

[@@@deriving.end]

type aws_ssoadmin_trusted_token_issuer = {
  client_token : string prop option; [@option]
  instance_arn : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  trusted_token_issuer_type : string prop;
  trusted_token_issuer_configuration :
    trusted_token_issuer_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_trusted_token_issuer) -> ()

let yojson_of_aws_ssoadmin_trusted_token_issuer =
  (function
   | {
       client_token = v_client_token;
       instance_arn = v_instance_arn;
       name = v_name;
       tags = v_tags;
       trusted_token_issuer_type = v_trusted_token_issuer_type;
       trusted_token_issuer_configuration =
         v_trusted_token_issuer_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_trusted_token_issuer_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trusted_token_issuer_configuration)
               v_trusted_token_issuer_configuration
           in
           let bnd = "trusted_token_issuer_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_trusted_token_issuer_type
         in
         ("trusted_token_issuer_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
       in
       let bnds =
         match v_client_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_trusted_token_issuer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_trusted_token_issuer

[@@@deriving.end]

let trusted_token_issuer_configuration__oidc_jwt_configuration
    ~claim_attribute_path ~identity_store_attribute_path ~issuer_url
    ~jwks_retrieval_option () :
    trusted_token_issuer_configuration__oidc_jwt_configuration =
  {
    claim_attribute_path;
    identity_store_attribute_path;
    issuer_url;
    jwks_retrieval_option;
  }

let trusted_token_issuer_configuration ?(oidc_jwt_configuration = [])
    () : trusted_token_issuer_configuration =
  { oidc_jwt_configuration }

let aws_ssoadmin_trusted_token_issuer ?client_token ?tags
    ?(trusted_token_issuer_configuration = []) ~instance_arn ~name
    ~trusted_token_issuer_type () : aws_ssoadmin_trusted_token_issuer
    =
  {
    client_token;
    instance_arn;
    name;
    tags;
    trusted_token_issuer_type;
    trusted_token_issuer_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  client_token : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trusted_token_issuer_type : string prop;
}

let make ?client_token ?tags
    ?(trusted_token_issuer_configuration = []) ~instance_arn ~name
    ~trusted_token_issuer_type __id =
  let __type = "aws_ssoadmin_trusted_token_issuer" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       client_token = Prop.computed __type __id "client_token";
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       trusted_token_issuer_type =
         Prop.computed __type __id "trusted_token_issuer_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_trusted_token_issuer
        (aws_ssoadmin_trusted_token_issuer ?client_token ?tags
           ~trusted_token_issuer_configuration ~instance_arn ~name
           ~trusted_token_issuer_type ());
    attrs = __attrs;
  }

let register ?tf_module ?client_token ?tags
    ?(trusted_token_issuer_configuration = []) ~instance_arn ~name
    ~trusted_token_issuer_type __id =
  let (r : _ Tf_core.resource) =
    make ?client_token ?tags ~trusted_token_issuer_configuration
      ~instance_arn ~name ~trusted_token_issuer_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
