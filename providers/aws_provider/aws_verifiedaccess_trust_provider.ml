(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_trust_provider__device_options = {
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider__device_options *)

type aws_verifiedaccess_trust_provider__oidc_options = {
  authorization_endpoint : string option; [@option]
      (** authorization_endpoint *)
  client_id : string option; [@option]  (** client_id *)
  client_secret : string;  (** client_secret *)
  issuer : string option; [@option]  (** issuer *)
  scope : string option; [@option]  (** scope *)
  token_endpoint : string option; [@option]  (** token_endpoint *)
  user_info_endpoint : string option; [@option]
      (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider__oidc_options *)

type aws_verifiedaccess_trust_provider__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_trust_provider__timeouts *)

type aws_verifiedaccess_trust_provider = {
  description : string option; [@option]  (** description *)
  device_trust_provider_type : string option; [@option]
      (** device_trust_provider_type *)
  policy_reference_name : string;  (** policy_reference_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  trust_provider_type : string;  (** trust_provider_type *)
  user_trust_provider_type : string option; [@option]
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
    ?device_trust_provider_type ?tags ?user_trust_provider_type
    ?timeouts ~policy_reference_name ~trust_provider_type
    ~device_options ~oidc_options __resource_id =
  let __resource_type = "aws_verifiedaccess_trust_provider" in
  let __resource =
    {
      description;
      device_trust_provider_type;
      policy_reference_name;
      tags;
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
