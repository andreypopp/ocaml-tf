(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trusted_token_issuer_configuration__oidc_jwt_configuration = {
  claim_attribute_path : string prop;  (** claim_attribute_path *)
  identity_store_attribute_path : string prop;
      (** identity_store_attribute_path *)
  issuer_url : string prop;  (** issuer_url *)
  jwks_retrieval_option : string prop;  (** jwks_retrieval_option *)
}
[@@deriving yojson_of]
(** trusted_token_issuer_configuration__oidc_jwt_configuration *)

type trusted_token_issuer_configuration = {
  oidc_jwt_configuration :
    trusted_token_issuer_configuration__oidc_jwt_configuration list;
}
[@@deriving yojson_of]
(** trusted_token_issuer_configuration *)

type aws_ssoadmin_trusted_token_issuer = {
  client_token : string prop option; [@option]  (** client_token *)
  instance_arn : string prop;  (** instance_arn *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trusted_token_issuer_type : string prop;
      (** trusted_token_issuer_type *)
  trusted_token_issuer_configuration :
    trusted_token_issuer_configuration list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_trusted_token_issuer *)

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

let trusted_token_issuer_configuration ~oidc_jwt_configuration () :
    trusted_token_issuer_configuration =
  { oidc_jwt_configuration }

let aws_ssoadmin_trusted_token_issuer ?client_token ?tags
    ~instance_arn ~name ~trusted_token_issuer_type
    ~trusted_token_issuer_configuration () :
    aws_ssoadmin_trusted_token_issuer =
  {
    client_token;
    instance_arn;
    name;
    tags;
    trusted_token_issuer_type;
    trusted_token_issuer_configuration;
  }

type t = {
  arn : string prop;
  client_token : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trusted_token_issuer_type : string prop;
}

let make ?client_token ?tags ~instance_arn ~name
    ~trusted_token_issuer_type ~trusted_token_issuer_configuration
    __id =
  let __type = "aws_ssoadmin_trusted_token_issuer" in
  let __attrs =
    ({
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
           ~instance_arn ~name ~trusted_token_issuer_type
           ~trusted_token_issuer_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?client_token ?tags ~instance_arn ~name
    ~trusted_token_issuer_type ~trusted_token_issuer_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?client_token ?tags ~instance_arn ~name
      ~trusted_token_issuer_type ~trusted_token_issuer_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
