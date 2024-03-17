(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_policy__approval_group = {
  approvals_needed : float prop;  (** Number of approvals needed. *)
  email_addresses : string prop list option; [@option]
      (** List of emails to request approval from. *)
  email_list_uuid : string prop option; [@option]
      (** email_list_uuid *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__approval_group *)

type cloudflare_access_policy__exclude__auth_context = {
  ac_id : string prop;
      (** The ACID of the Authentication Context. *)
  id : string prop;  (** The ID of the Authentication Context. *)
  identity_provider_id : string prop;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__auth_context *)

type cloudflare_access_policy__exclude__azure = {
  id : string prop list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string prop option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__azure *)

type cloudflare_access_policy__exclude__external_evaluation = {
  evaluate_url : string prop option; [@option]  (** evaluate_url *)
  keys_url : string prop option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__external_evaluation *)

type cloudflare_access_policy__exclude__github = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop option; [@option]  (** name *)
  teams : string prop list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__github *)

type cloudflare_access_policy__exclude__gsuite = {
  email : string prop list option; [@option]  (** email *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__gsuite *)

type cloudflare_access_policy__exclude__okta = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__okta *)

type cloudflare_access_policy__exclude__saml = {
  attribute_name : string prop option; [@option]
      (** attribute_name *)
  attribute_value : string prop option; [@option]
      (** attribute_value *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__exclude__saml *)

type cloudflare_access_policy__exclude = {
  any_valid_service_token : bool prop option; [@option]
      (** any_valid_service_token *)
  auth_method : string prop option; [@option]  (** auth_method *)
  certificate : bool prop option; [@option]  (** certificate *)
  common_name : string prop option; [@option]  (** common_name *)
  device_posture : string prop list option; [@option]
      (** device_posture *)
  email : string prop list option; [@option]  (** email *)
  email_domain : string prop list option; [@option]
      (** email_domain *)
  everyone : bool prop option; [@option]  (** everyone *)
  geo : string prop list option; [@option]  (** geo *)
  group : string prop list option; [@option]  (** group *)
  ip : string prop list option; [@option]
      (** An IPv4 or IPv6 CIDR block. *)
  ip_list : string prop list option; [@option]
      (** The ID of an existing IP list to reference. *)
  login_method : string prop list option; [@option]
      (** login_method *)
  service_token : string prop list option; [@option]
      (** service_token *)
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
  ac_id : string prop;
      (** The ACID of the Authentication Context. *)
  id : string prop;  (** The ID of the Authentication Context. *)
  identity_provider_id : string prop;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__auth_context *)

type cloudflare_access_policy__include__azure = {
  id : string prop list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string prop option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__azure *)

type cloudflare_access_policy__include__external_evaluation = {
  evaluate_url : string prop option; [@option]  (** evaluate_url *)
  keys_url : string prop option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__external_evaluation *)

type cloudflare_access_policy__include__github = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop option; [@option]  (** name *)
  teams : string prop list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__github *)

type cloudflare_access_policy__include__gsuite = {
  email : string prop list option; [@option]  (** email *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__gsuite *)

type cloudflare_access_policy__include__okta = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__okta *)

type cloudflare_access_policy__include__saml = {
  attribute_name : string prop option; [@option]
      (** attribute_name *)
  attribute_value : string prop option; [@option]
      (** attribute_value *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__include__saml *)

type cloudflare_access_policy__include = {
  any_valid_service_token : bool prop option; [@option]
      (** any_valid_service_token *)
  auth_method : string prop option; [@option]  (** auth_method *)
  certificate : bool prop option; [@option]  (** certificate *)
  common_name : string prop option; [@option]  (** common_name *)
  device_posture : string prop list option; [@option]
      (** device_posture *)
  email : string prop list option; [@option]  (** email *)
  email_domain : string prop list option; [@option]
      (** email_domain *)
  everyone : bool prop option; [@option]  (** everyone *)
  geo : string prop list option; [@option]  (** geo *)
  group : string prop list option; [@option]  (** group *)
  ip : string prop list option; [@option]
      (** An IPv4 or IPv6 CIDR block. *)
  ip_list : string prop list option; [@option]
      (** The ID of an existing IP list to reference. *)
  login_method : string prop list option; [@option]
      (** login_method *)
  service_token : string prop list option; [@option]
      (** service_token *)
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
  ac_id : string prop;
      (** The ACID of the Authentication Context. *)
  id : string prop;  (** The ID of the Authentication Context. *)
  identity_provider_id : string prop;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__auth_context *)

type cloudflare_access_policy__require__azure = {
  id : string prop list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string prop option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__azure *)

type cloudflare_access_policy__require__external_evaluation = {
  evaluate_url : string prop option; [@option]  (** evaluate_url *)
  keys_url : string prop option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__external_evaluation *)

type cloudflare_access_policy__require__github = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop option; [@option]  (** name *)
  teams : string prop list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__github *)

type cloudflare_access_policy__require__gsuite = {
  email : string prop list option; [@option]  (** email *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__gsuite *)

type cloudflare_access_policy__require__okta = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__okta *)

type cloudflare_access_policy__require__saml = {
  attribute_name : string prop option; [@option]
      (** attribute_name *)
  attribute_value : string prop option; [@option]
      (** attribute_value *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** cloudflare_access_policy__require__saml *)

type cloudflare_access_policy__require = {
  any_valid_service_token : bool prop option; [@option]
      (** any_valid_service_token *)
  auth_method : string prop option; [@option]  (** auth_method *)
  certificate : bool prop option; [@option]  (** certificate *)
  common_name : string prop option; [@option]  (** common_name *)
  device_posture : string prop list option; [@option]
      (** device_posture *)
  email : string prop list option; [@option]  (** email *)
  email_domain : string prop list option; [@option]
      (** email_domain *)
  everyone : bool prop option; [@option]  (** everyone *)
  geo : string prop list option; [@option]  (** geo *)
  group : string prop list option; [@option]  (** group *)
  ip : string prop list option; [@option]
      (** An IPv4 or IPv6 CIDR block. *)
  ip_list : string prop list option; [@option]
      (** The ID of an existing IP list to reference. *)
  login_method : string prop list option; [@option]
      (** login_method *)
  service_token : string prop list option; [@option]
      (** service_token *)
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
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  application_id : string prop;
      (** The ID of the application the policy is associated with. *)
  approval_required : bool prop option; [@option]
      (** approval_required *)
  decision : string prop;
      (** Defines the action Access will take if the policy matches the user. Available values: `allow`, `deny`, `non_identity`, `bypass`. *)
  id : string prop option; [@option]  (** id *)
  isolation_required : bool prop option; [@option]
      (** Require this application to be served in an isolated browser for users matching this policy. *)
  name : string prop;  (** Friendly name of the Access Policy. *)
  precedence : float prop;
      (** The unique precedence for policies on a single application. *)
  purpose_justification_prompt : string prop option; [@option]
      (** The prompt to display to the user for a justification for accessing the resource. Required when using `purpose_justification_required`. *)
  purpose_justification_required : bool prop option; [@option]
      (** Whether to prompt the user for a justification for accessing the resource. *)
  session_duration : string prop option; [@option]
      (** How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
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

type t = {
  account_id : string prop;
  application_id : string prop;
  approval_required : bool prop;
  decision : string prop;
  id : string prop;
  isolation_required : bool prop;
  name : string prop;
  precedence : float prop;
  purpose_justification_prompt : string prop;
  purpose_justification_required : bool prop;
  session_duration : string prop;
  zone_id : string prop;
}

let cloudflare_access_policy ?account_id ?approval_required ?id
    ?isolation_required ?purpose_justification_prompt
    ?purpose_justification_required ?session_duration ?zone_id
    ~application_id ~decision ~name ~precedence ~approval_group
    ~exclude ~include_ ~require __resource_id =
  let __resource_type = "cloudflare_access_policy" in
  let __resource =
    ({
       account_id;
       application_id;
       approval_required;
       decision;
       id;
       isolation_required;
       name;
       precedence;
       purpose_justification_prompt;
       purpose_justification_required;
       session_duration;
       zone_id;
       approval_group;
       exclude;
       include_;
       require;
     }
      : cloudflare_access_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_policy __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       approval_required =
         Prop.computed __resource_type __resource_id
           "approval_required";
       decision =
         Prop.computed __resource_type __resource_id "decision";
       id = Prop.computed __resource_type __resource_id "id";
       isolation_required =
         Prop.computed __resource_type __resource_id
           "isolation_required";
       name = Prop.computed __resource_type __resource_id "name";
       precedence =
         Prop.computed __resource_type __resource_id "precedence";
       purpose_justification_prompt =
         Prop.computed __resource_type __resource_id
           "purpose_justification_prompt";
       purpose_justification_required =
         Prop.computed __resource_type __resource_id
           "purpose_justification_required";
       session_duration =
         Prop.computed __resource_type __resource_id
           "session_duration";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
