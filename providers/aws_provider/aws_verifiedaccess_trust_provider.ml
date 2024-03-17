(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_trust_provider__device_options = {
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider__device_options *)

type aws_verifiedaccess_trust_provider__oidc_options = {
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
(** aws_verifiedaccess_trust_provider__oidc_options *)

type aws_verifiedaccess_trust_provider__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider__timeouts *)

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
  device_options :
    aws_verifiedaccess_trust_provider__device_options list;
  oidc_options :
    aws_verifiedaccess_trust_provider__oidc_options list;
  timeouts : aws_verifiedaccess_trust_provider__timeouts option;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider *)

let aws_verifiedaccess_trust_provider ?description
    ?device_trust_provider_type ?id ?tags ?tags_all
    ?user_trust_provider_type ?timeouts ~policy_reference_name
    ~trust_provider_type ~device_options ~oidc_options __resource_id
    =
  let __resource_type = "aws_verifiedaccess_trust_provider" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_trust_provider __resource);
  ()
