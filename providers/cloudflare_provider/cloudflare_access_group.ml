(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_access_group__exclude__auth_context = {
  ac_id : string;  (** The ACID of the Authentication Context. *)
  id : string;  (** The ID of the Authentication Context. *)
  identity_provider_id : string;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__auth_context *)

type cloudflare_access_group__exclude__azure = {
  id : string list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__azure *)

type cloudflare_access_group__exclude__external_evaluation = {
  evaluate_url : string option; [@option]  (** evaluate_url *)
  keys_url : string option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__external_evaluation *)

type cloudflare_access_group__exclude__github = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string option; [@option]  (** name *)
  teams : string list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__github *)

type cloudflare_access_group__exclude__gsuite = {
  email : string list option; [@option]  (** email *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__gsuite *)

type cloudflare_access_group__exclude__okta = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__okta *)

type cloudflare_access_group__exclude__saml = {
  attribute_name : string option; [@option]  (** attribute_name *)
  attribute_value : string option; [@option]  (** attribute_value *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude__saml *)

type cloudflare_access_group__exclude = {
  any_valid_service_token : bool option; [@option]
      (** any_valid_service_token *)
  auth_method : string option; [@option]  (** auth_method *)
  certificate : bool option; [@option]  (** certificate *)
  common_name : string option; [@option]  (** common_name *)
  device_posture : string list option; [@option]
      (** device_posture *)
  email : string list option; [@option]  (** email *)
  email_domain : string list option; [@option]  (** email_domain *)
  everyone : bool option; [@option]  (** everyone *)
  geo : string list option; [@option]  (** geo *)
  group : string list option; [@option]  (** group *)
  ip : string list option; [@option]
      (** An IPv4 or IPv6 CIDR block. *)
  ip_list : string list option; [@option]
      (** The ID of an existing IP list to reference. *)
  login_method : string list option; [@option]  (** login_method *)
  service_token : string list option; [@option]  (** service_token *)
  auth_context : cloudflare_access_group__exclude__auth_context list;
  azure : cloudflare_access_group__exclude__azure list;
  external_evaluation :
    cloudflare_access_group__exclude__external_evaluation list;
  github : cloudflare_access_group__exclude__github list;
  gsuite : cloudflare_access_group__exclude__gsuite list;
  okta : cloudflare_access_group__exclude__okta list;
  saml : cloudflare_access_group__exclude__saml list;
}
[@@deriving yojson_of]
(** cloudflare_access_group__exclude *)

type cloudflare_access_group__include__auth_context = {
  ac_id : string;  (** The ACID of the Authentication Context. *)
  id : string;  (** The ID of the Authentication Context. *)
  identity_provider_id : string;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__auth_context *)

type cloudflare_access_group__include__azure = {
  id : string list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__azure *)

type cloudflare_access_group__include__external_evaluation = {
  evaluate_url : string option; [@option]  (** evaluate_url *)
  keys_url : string option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__external_evaluation *)

type cloudflare_access_group__include__github = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string option; [@option]  (** name *)
  teams : string list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__github *)

type cloudflare_access_group__include__gsuite = {
  email : string list option; [@option]  (** email *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__gsuite *)

type cloudflare_access_group__include__okta = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__okta *)

type cloudflare_access_group__include__saml = {
  attribute_name : string option; [@option]  (** attribute_name *)
  attribute_value : string option; [@option]  (** attribute_value *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__include__saml *)

type cloudflare_access_group__include = {
  any_valid_service_token : bool option; [@option]
      (** any_valid_service_token *)
  auth_method : string option; [@option]  (** auth_method *)
  certificate : bool option; [@option]  (** certificate *)
  common_name : string option; [@option]  (** common_name *)
  device_posture : string list option; [@option]
      (** device_posture *)
  email : string list option; [@option]  (** email *)
  email_domain : string list option; [@option]  (** email_domain *)
  everyone : bool option; [@option]  (** everyone *)
  geo : string list option; [@option]  (** geo *)
  group : string list option; [@option]  (** group *)
  ip : string list option; [@option]
      (** An IPv4 or IPv6 CIDR block. *)
  ip_list : string list option; [@option]
      (** The ID of an existing IP list to reference. *)
  login_method : string list option; [@option]  (** login_method *)
  service_token : string list option; [@option]  (** service_token *)
  auth_context : cloudflare_access_group__include__auth_context list;
  azure : cloudflare_access_group__include__azure list;
  external_evaluation :
    cloudflare_access_group__include__external_evaluation list;
  github : cloudflare_access_group__include__github list;
  gsuite : cloudflare_access_group__include__gsuite list;
  okta : cloudflare_access_group__include__okta list;
  saml : cloudflare_access_group__include__saml list;
}
[@@deriving yojson_of]
(** cloudflare_access_group__include *)

type cloudflare_access_group__require__auth_context = {
  ac_id : string;  (** The ACID of the Authentication Context. *)
  id : string;  (** The ID of the Authentication Context. *)
  identity_provider_id : string;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__auth_context *)

type cloudflare_access_group__require__azure = {
  id : string list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__azure *)

type cloudflare_access_group__require__external_evaluation = {
  evaluate_url : string option; [@option]  (** evaluate_url *)
  keys_url : string option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__external_evaluation *)

type cloudflare_access_group__require__github = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string option; [@option]  (** name *)
  teams : string list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__github *)

type cloudflare_access_group__require__gsuite = {
  email : string list option; [@option]  (** email *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__gsuite *)

type cloudflare_access_group__require__okta = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__okta *)

type cloudflare_access_group__require__saml = {
  attribute_name : string option; [@option]  (** attribute_name *)
  attribute_value : string option; [@option]  (** attribute_value *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_group__require__saml *)

type cloudflare_access_group__require = {
  any_valid_service_token : bool option; [@option]
      (** any_valid_service_token *)
  auth_method : string option; [@option]  (** auth_method *)
  certificate : bool option; [@option]  (** certificate *)
  common_name : string option; [@option]  (** common_name *)
  device_posture : string list option; [@option]
      (** device_posture *)
  email : string list option; [@option]  (** email *)
  email_domain : string list option; [@option]  (** email_domain *)
  everyone : bool option; [@option]  (** everyone *)
  geo : string list option; [@option]  (** geo *)
  group : string list option; [@option]  (** group *)
  ip : string list option; [@option]
      (** An IPv4 or IPv6 CIDR block. *)
  ip_list : string list option; [@option]
      (** The ID of an existing IP list to reference. *)
  login_method : string list option; [@option]  (** login_method *)
  service_token : string list option; [@option]  (** service_token *)
  auth_context : cloudflare_access_group__require__auth_context list;
  azure : cloudflare_access_group__require__azure list;
  external_evaluation :
    cloudflare_access_group__require__external_evaluation list;
  github : cloudflare_access_group__require__github list;
  gsuite : cloudflare_access_group__require__gsuite list;
  okta : cloudflare_access_group__require__okta list;
  saml : cloudflare_access_group__require__saml list;
}
[@@deriving yojson_of]
(** cloudflare_access_group__require *)

type cloudflare_access_group = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  name : string;  (** name *)
  exclude : cloudflare_access_group__exclude list;
  include_ : cloudflare_access_group__include list;
  require : cloudflare_access_group__require list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Group resource. Access Groups are used
in conjunction with Access Policies to restrict access to a
particular resource based on group membership.
 *)

let cloudflare_access_group ?account_id ~name ~exclude ~include_
    ~require __resource_id =
  let __resource_type = "cloudflare_access_group" in
  let __resource =
    { account_id; name; exclude; include_; require }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_group __resource);
  ()
