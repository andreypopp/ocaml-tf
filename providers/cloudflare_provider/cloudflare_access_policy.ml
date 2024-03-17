(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_access_policy__approval_group = {
  approvals_needed : float;  (** Number of approvals needed. *)
  email_addresses : string list option; [@option]
      (** List of emails to request approval from. *)
  email_list_uuid : string option; [@option]  (** email_list_uuid *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__approval_group *)

type cloudflare_access_policy__exclude__auth_context = {
  ac_id : string;  (** The ACID of the Authentication Context. *)
  id : string;  (** The ID of the Authentication Context. *)
  identity_provider_id : string;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__auth_context *)

type cloudflare_access_policy__exclude__azure = {
  id : string list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__azure *)

type cloudflare_access_policy__exclude__external_evaluation = {
  evaluate_url : string option; [@option]  (** evaluate_url *)
  keys_url : string option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__external_evaluation *)

type cloudflare_access_policy__exclude__github = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string option; [@option]  (** name *)
  teams : string list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__github *)

type cloudflare_access_policy__exclude__gsuite = {
  email : string list option; [@option]  (** email *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__gsuite *)

type cloudflare_access_policy__exclude__okta = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__okta *)

type cloudflare_access_policy__exclude__saml = {
  attribute_name : string option; [@option]  (** attribute_name *)
  attribute_value : string option; [@option]  (** attribute_value *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__saml *)

type cloudflare_access_policy__exclude = {
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
  auth_context :
    cloudflare_access_policy__exclude__auth_context list;
  azure : cloudflare_access_policy__exclude__azure list;
  external_evaluation :
    cloudflare_access_policy__exclude__external_evaluation list;
  github : cloudflare_access_policy__exclude__github list;
  gsuite : cloudflare_access_policy__exclude__gsuite list;
  okta : cloudflare_access_policy__exclude__okta list;
  saml : cloudflare_access_policy__exclude__saml list;
}
[@@deriving yojson_of]
(** A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions). *)

type cloudflare_access_policy__include__auth_context = {
  ac_id : string;  (** The ACID of the Authentication Context. *)
  id : string;  (** The ID of the Authentication Context. *)
  identity_provider_id : string;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__auth_context *)

type cloudflare_access_policy__include__azure = {
  id : string list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__azure *)

type cloudflare_access_policy__include__external_evaluation = {
  evaluate_url : string option; [@option]  (** evaluate_url *)
  keys_url : string option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__external_evaluation *)

type cloudflare_access_policy__include__github = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string option; [@option]  (** name *)
  teams : string list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__github *)

type cloudflare_access_policy__include__gsuite = {
  email : string list option; [@option]  (** email *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__gsuite *)

type cloudflare_access_policy__include__okta = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__okta *)

type cloudflare_access_policy__include__saml = {
  attribute_name : string option; [@option]  (** attribute_name *)
  attribute_value : string option; [@option]  (** attribute_value *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__saml *)

type cloudflare_access_policy__include = {
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
  auth_context :
    cloudflare_access_policy__include__auth_context list;
  azure : cloudflare_access_policy__include__azure list;
  external_evaluation :
    cloudflare_access_policy__include__external_evaluation list;
  github : cloudflare_access_policy__include__github list;
  gsuite : cloudflare_access_policy__include__gsuite list;
  okta : cloudflare_access_policy__include__okta list;
  saml : cloudflare_access_policy__include__saml list;
}
[@@deriving yojson_of]
(** A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions). *)

type cloudflare_access_policy__require__auth_context = {
  ac_id : string;  (** The ACID of the Authentication Context. *)
  id : string;  (** The ID of the Authentication Context. *)
  identity_provider_id : string;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__auth_context *)

type cloudflare_access_policy__require__azure = {
  id : string list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__azure *)

type cloudflare_access_policy__require__external_evaluation = {
  evaluate_url : string option; [@option]  (** evaluate_url *)
  keys_url : string option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__external_evaluation *)

type cloudflare_access_policy__require__github = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string option; [@option]  (** name *)
  teams : string list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__github *)

type cloudflare_access_policy__require__gsuite = {
  email : string list option; [@option]  (** email *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__gsuite *)

type cloudflare_access_policy__require__okta = {
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
  name : string list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__okta *)

type cloudflare_access_policy__require__saml = {
  attribute_name : string option; [@option]  (** attribute_name *)
  attribute_value : string option; [@option]  (** attribute_value *)
  identity_provider_id : string option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__saml *)

type cloudflare_access_policy__require = {
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
  auth_context :
    cloudflare_access_policy__require__auth_context list;
  azure : cloudflare_access_policy__require__azure list;
  external_evaluation :
    cloudflare_access_policy__require__external_evaluation list;
  github : cloudflare_access_policy__require__github list;
  gsuite : cloudflare_access_policy__require__gsuite list;
  okta : cloudflare_access_policy__require__okta list;
  saml : cloudflare_access_policy__require__saml list;
}
[@@deriving yojson_of]
(** A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions). *)

type cloudflare_access_policy = {
  application_id : string;
      (** The ID of the application the policy is associated with. *)
  approval_required : bool option; [@option]
      (** approval_required *)
  decision : string;
      (** Defines the action Access will take if the policy matches the user. Available values: `allow`, `deny`, `non_identity`, `bypass`. *)
  isolation_required : bool option; [@option]
      (** Require this application to be served in an isolated browser for users matching this policy. *)
  name : string;  (** Friendly name of the Access Policy. *)
  precedence : float;
      (** The unique precedence for policies on a single application. *)
  purpose_justification_prompt : string option; [@option]
      (** The prompt to display to the user for a justification for accessing the resource. Required when using `purpose_justification_required`. *)
  purpose_justification_required : bool option; [@option]
      (** Whether to prompt the user for a justification for accessing the resource. *)
  session_duration : string option; [@option]
      (** How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. *)
  approval_group : cloudflare_access_policy__approval_group list;
  exclude : cloudflare_access_policy__exclude list;
  include_ : cloudflare_access_policy__include list;
  require : cloudflare_access_policy__require list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Policy resource. Access Policies are
used in conjunction with Access Applications to restrict access to
a particular resource.
 *)

let cloudflare_access_policy ?approval_required ?isolation_required
    ?purpose_justification_prompt ?purpose_justification_required
    ?session_duration ~application_id ~decision ~name ~precedence
    ~approval_group ~exclude ~include_ ~require __resource_id =
  let __resource_type = "cloudflare_access_policy" in
  let __resource =
    {
      application_id;
      approval_required;
      decision;
      isolation_required;
      name;
      precedence;
      purpose_justification_prompt;
      purpose_justification_required;
      session_duration;
      approval_group;
      exclude;
      include_;
      require;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_policy __resource);
  ()
