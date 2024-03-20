(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type device_options = {
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** device_options *)

type oidc_options = {
  authorization_endpoint : string prop option; [@option]
      (** authorization_endpoint *)
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  issuer : string prop option; [@option]  (** issuer *)
  scope : string prop option; [@option]  (** scope *)
  token_endpoint : string prop option; [@option]
      (** token_endpoint *)
  user_info_endpoint : string prop option; [@option]
      (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** oidc_options *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_verifiedaccess_trust_provider = {
  description : string prop option; [@option]  (** description *)
  device_trust_provider_type : string prop option; [@option]
      (** device_trust_provider_type *)
  id : string prop option; [@option]  (** id *)
  policy_reference_name : string prop;  (** policy_reference_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  trust_provider_type : string prop;  (** trust_provider_type *)
  user_trust_provider_type : string prop option; [@option]
      (** user_trust_provider_type *)
  device_options : device_options list;
  oidc_options : oidc_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider *)

let device_options ?tenant_id () : device_options = { tenant_id }

let oidc_options ?authorization_endpoint ?client_id ?issuer ?scope
    ?token_endpoint ?user_info_endpoint ~client_secret () :
    oidc_options =
  {
    authorization_endpoint;
    client_id;
    client_secret;
    issuer;
    scope;
    token_endpoint;
    user_info_endpoint;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_verifiedaccess_trust_provider ?description
    ?device_trust_provider_type ?id ?tags ?tags_all
    ?user_trust_provider_type ?timeouts ~policy_reference_name
    ~trust_provider_type ~device_options ~oidc_options () :
    aws_verifiedaccess_trust_provider =
  {
    description;
    device_trust_provider_type;
    id;
    policy_reference_name;
    tags;
    tags_all;
    trust_provider_type;
    user_trust_provider_type;
    device_options;
    oidc_options;
    timeouts;
  }

type t = {
  description : string prop;
  device_trust_provider_type : string prop;
  id : string prop;
  policy_reference_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trust_provider_type : string prop;
  user_trust_provider_type : string prop;
}

let make ?description ?device_trust_provider_type ?id ?tags ?tags_all
    ?user_trust_provider_type ?timeouts ~policy_reference_name
    ~trust_provider_type ~device_options ~oidc_options __id =
  let __type = "aws_verifiedaccess_trust_provider" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       device_trust_provider_type =
         Prop.computed __type __id "device_trust_provider_type";
       id = Prop.computed __type __id "id";
       policy_reference_name =
         Prop.computed __type __id "policy_reference_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       trust_provider_type =
         Prop.computed __type __id "trust_provider_type";
       user_trust_provider_type =
         Prop.computed __type __id "user_trust_provider_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_trust_provider
        (aws_verifiedaccess_trust_provider ?description
           ?device_trust_provider_type ?id ?tags ?tags_all
           ?user_trust_provider_type ?timeouts ~policy_reference_name
           ~trust_provider_type ~device_options ~oidc_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?device_trust_provider_type ?id
    ?tags ?tags_all ?user_trust_provider_type ?timeouts
    ~policy_reference_name ~trust_provider_type ~device_options
    ~oidc_options __id =
  let (r : _ Tf_core.resource) =
    make ?description ?device_trust_provider_type ?id ?tags ?tags_all
      ?user_trust_provider_type ?timeouts ~policy_reference_name
      ~trust_provider_type ~device_options ~oidc_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
