(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type approval_group = {
  approvals_needed : float prop;  (** Number of approvals needed. *)
  email_addresses : string prop list option; [@option]
      (** List of emails to request approval from. *)
  email_list_uuid : string prop option; [@option]
      (** email_list_uuid *)
}
[@@deriving yojson_of]
(** approval_group *)

type exclude__auth_context = {
  ac_id : string prop;
      (** The ACID of the Authentication Context. *)
  id : string prop;  (** The ID of the Authentication Context. *)
  identity_provider_id : string prop;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** exclude__auth_context *)

type exclude__azure = {
  id : string prop list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string prop option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** exclude__azure *)

type exclude__external_evaluation = {
  evaluate_url : string prop option; [@option]  (** evaluate_url *)
  keys_url : string prop option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** exclude__external_evaluation *)

type exclude__github = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop option; [@option]  (** name *)
  teams : string prop list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** exclude__github *)

type exclude__gsuite = {
  email : string prop list option; [@option]  (** email *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** exclude__gsuite *)

type exclude__okta = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** exclude__okta *)

type exclude__saml = {
  attribute_name : string prop option; [@option]
      (** attribute_name *)
  attribute_value : string prop option; [@option]
      (** attribute_value *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** exclude__saml *)

type exclude = {
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
  auth_context : exclude__auth_context list;
  azure : exclude__azure list;
  external_evaluation : exclude__external_evaluation list;
  github : exclude__github list;
  gsuite : exclude__gsuite list;
  okta : exclude__okta list;
  saml : exclude__saml list;
}
[@@deriving yojson_of]
(** A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions). *)

type include__auth_context = {
  ac_id : string prop;
      (** The ACID of the Authentication Context. *)
  id : string prop;  (** The ID of the Authentication Context. *)
  identity_provider_id : string prop;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** include__auth_context *)

type include__azure = {
  id : string prop list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string prop option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** include__azure *)

type include__external_evaluation = {
  evaluate_url : string prop option; [@option]  (** evaluate_url *)
  keys_url : string prop option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** include__external_evaluation *)

type include__github = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop option; [@option]  (** name *)
  teams : string prop list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** include__github *)

type include__gsuite = {
  email : string prop list option; [@option]  (** email *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** include__gsuite *)

type include__okta = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** include__okta *)

type include__saml = {
  attribute_name : string prop option; [@option]
      (** attribute_name *)
  attribute_value : string prop option; [@option]
      (** attribute_value *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** include__saml *)

type include_ = {
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
  auth_context : include__auth_context list;
  azure : include__azure list;
  external_evaluation : include__external_evaluation list;
  github : include__github list;
  gsuite : include__gsuite list;
  okta : include__okta list;
  saml : include__saml list;
}
[@@deriving yojson_of]
(** A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions). *)

type require__auth_context = {
  ac_id : string prop;
      (** The ACID of the Authentication Context. *)
  id : string prop;  (** The ID of the Authentication Context. *)
  identity_provider_id : string prop;
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** require__auth_context *)

type require__azure = {
  id : string prop list option; [@option]
      (** The ID of the Azure group or user. *)
  identity_provider_id : string prop option; [@option]
      (** The ID of the Azure Identity provider. *)
}
[@@deriving yojson_of]
(** require__azure *)

type require__external_evaluation = {
  evaluate_url : string prop option; [@option]  (** evaluate_url *)
  keys_url : string prop option; [@option]  (** keys_url *)
}
[@@deriving yojson_of]
(** require__external_evaluation *)

type require__github = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop option; [@option]  (** name *)
  teams : string prop list option; [@option]  (** teams *)
}
[@@deriving yojson_of]
(** require__github *)

type require__gsuite = {
  email : string prop list option; [@option]  (** email *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** require__gsuite *)

type require__okta = {
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
  name : string prop list option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** require__okta *)

type require__saml = {
  attribute_name : string prop option; [@option]
      (** attribute_name *)
  attribute_value : string prop option; [@option]
      (** attribute_value *)
  identity_provider_id : string prop option; [@option]
      (** identity_provider_id *)
}
[@@deriving yojson_of]
(** require__saml *)

type require = {
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
  auth_context : require__auth_context list;
  azure : require__azure list;
  external_evaluation : require__external_evaluation list;
  github : require__github list;
  gsuite : require__gsuite list;
  okta : require__okta list;
  saml : require__saml list;
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
  approval_group : approval_group list;
  exclude : exclude list;
  include_ : include_ list;
  require : require list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Access Policy resource. Access Policies are
used in conjunction with Access Applications to restrict access to
a particular resource.
 *)

let approval_group ?email_addresses ?email_list_uuid
    ~approvals_needed () : approval_group =
  { approvals_needed; email_addresses; email_list_uuid }

let exclude__auth_context ~ac_id ~id ~identity_provider_id () :
    exclude__auth_context =
  { ac_id; id; identity_provider_id }

let exclude__azure ?id ?identity_provider_id () : exclude__azure =
  { id; identity_provider_id }

let exclude__external_evaluation ?evaluate_url ?keys_url () :
    exclude__external_evaluation =
  { evaluate_url; keys_url }

let exclude__github ?identity_provider_id ?name ?teams () :
    exclude__github =
  { identity_provider_id; name; teams }

let exclude__gsuite ?email ?identity_provider_id () : exclude__gsuite
    =
  { email; identity_provider_id }

let exclude__okta ?identity_provider_id ?name () : exclude__okta =
  { identity_provider_id; name }

let exclude__saml ?attribute_name ?attribute_value
    ?identity_provider_id () : exclude__saml =
  { attribute_name; attribute_value; identity_provider_id }

let exclude ?any_valid_service_token ?auth_method ?certificate
    ?common_name ?device_posture ?email ?email_domain ?everyone ?geo
    ?group ?ip ?ip_list ?login_method ?service_token ~auth_context
    ~azure ~external_evaluation ~github ~gsuite ~okta ~saml () :
    exclude =
  {
    any_valid_service_token;
    auth_method;
    certificate;
    common_name;
    device_posture;
    email;
    email_domain;
    everyone;
    geo;
    group;
    ip;
    ip_list;
    login_method;
    service_token;
    auth_context;
    azure;
    external_evaluation;
    github;
    gsuite;
    okta;
    saml;
  }

let include__auth_context ~ac_id ~id ~identity_provider_id () :
    include__auth_context =
  { ac_id; id; identity_provider_id }

let include__azure ?id ?identity_provider_id () : include__azure =
  { id; identity_provider_id }

let include__external_evaluation ?evaluate_url ?keys_url () :
    include__external_evaluation =
  { evaluate_url; keys_url }

let include__github ?identity_provider_id ?name ?teams () :
    include__github =
  { identity_provider_id; name; teams }

let include__gsuite ?email ?identity_provider_id () : include__gsuite
    =
  { email; identity_provider_id }

let include__okta ?identity_provider_id ?name () : include__okta =
  { identity_provider_id; name }

let include__saml ?attribute_name ?attribute_value
    ?identity_provider_id () : include__saml =
  { attribute_name; attribute_value; identity_provider_id }

let include_ ?any_valid_service_token ?auth_method ?certificate
    ?common_name ?device_posture ?email ?email_domain ?everyone ?geo
    ?group ?ip ?ip_list ?login_method ?service_token ~auth_context
    ~azure ~external_evaluation ~github ~gsuite ~okta ~saml () :
    include_ =
  {
    any_valid_service_token;
    auth_method;
    certificate;
    common_name;
    device_posture;
    email;
    email_domain;
    everyone;
    geo;
    group;
    ip;
    ip_list;
    login_method;
    service_token;
    auth_context;
    azure;
    external_evaluation;
    github;
    gsuite;
    okta;
    saml;
  }

let require__auth_context ~ac_id ~id ~identity_provider_id () :
    require__auth_context =
  { ac_id; id; identity_provider_id }

let require__azure ?id ?identity_provider_id () : require__azure =
  { id; identity_provider_id }

let require__external_evaluation ?evaluate_url ?keys_url () :
    require__external_evaluation =
  { evaluate_url; keys_url }

let require__github ?identity_provider_id ?name ?teams () :
    require__github =
  { identity_provider_id; name; teams }

let require__gsuite ?email ?identity_provider_id () : require__gsuite
    =
  { email; identity_provider_id }

let require__okta ?identity_provider_id ?name () : require__okta =
  { identity_provider_id; name }

let require__saml ?attribute_name ?attribute_value
    ?identity_provider_id () : require__saml =
  { attribute_name; attribute_value; identity_provider_id }

let require ?any_valid_service_token ?auth_method ?certificate
    ?common_name ?device_posture ?email ?email_domain ?everyone ?geo
    ?group ?ip ?ip_list ?login_method ?service_token ~auth_context
    ~azure ~external_evaluation ~github ~gsuite ~okta ~saml () :
    require =
  {
    any_valid_service_token;
    auth_method;
    certificate;
    common_name;
    device_posture;
    email;
    email_domain;
    everyone;
    geo;
    group;
    ip;
    ip_list;
    login_method;
    service_token;
    auth_context;
    azure;
    external_evaluation;
    github;
    gsuite;
    okta;
    saml;
  }

let cloudflare_access_policy ?account_id ?approval_required ?id
    ?isolation_required ?purpose_justification_prompt
    ?purpose_justification_required ?session_duration ?zone_id
    ~application_id ~decision ~name ~precedence ~approval_group
    ~exclude ~include_ ~require () : cloudflare_access_policy =
  {
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

let register ?tf_module ?account_id ?approval_required ?id
    ?isolation_required ?purpose_justification_prompt
    ?purpose_justification_required ?session_duration ?zone_id
    ~application_id ~decision ~name ~precedence ~approval_group
    ~exclude ~include_ ~require __resource_id =
  let __resource_type = "cloudflare_access_policy" in
  let __resource =
    cloudflare_access_policy ?account_id ?approval_required ?id
      ?isolation_required ?purpose_justification_prompt
      ?purpose_justification_required ?session_duration ?zone_id
      ~application_id ~decision ~name ~precedence ~approval_group
      ~exclude ~include_ ~require ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
