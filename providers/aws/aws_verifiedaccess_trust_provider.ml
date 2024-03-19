(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?device_trust_provider_type ?id
    ?tags ?tags_all ?user_trust_provider_type ?timeouts
    ~policy_reference_name ~trust_provider_type ~device_options
    ~oidc_options __resource_id =
  let __resource_type = "aws_verifiedaccess_trust_provider" in
  let __resource =
    aws_verifiedaccess_trust_provider ?description
      ?device_trust_provider_type ?id ?tags ?tags_all
      ?user_trust_provider_type ?timeouts ~policy_reference_name
      ~trust_provider_type ~device_options ~oidc_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_trust_provider __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       device_trust_provider_type =
         Prop.computed __resource_type __resource_id
           "device_trust_provider_type";
       id = Prop.computed __resource_type __resource_id "id";
       policy_reference_name =
         Prop.computed __resource_type __resource_id
           "policy_reference_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       trust_provider_type =
         Prop.computed __resource_type __resource_id
           "trust_provider_type";
       user_trust_provider_type =
         Prop.computed __resource_type __resource_id
           "user_trust_provider_type";
     }
      : t)
  in
  __resource_attributes
