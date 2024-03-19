(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type authorization = {
  delegated_role_definition_ids : string prop list option; [@option]
      (** delegated_role_definition_ids *)
  principal_display_name : string prop option; [@option]
      (** principal_display_name *)
  principal_id : string prop;  (** principal_id *)
  role_definition_id : string prop;  (** role_definition_id *)
}
[@@deriving yojson_of]
(** authorization *)

type eligible_authorization__just_in_time_access_policy__approver = {
  principal_display_name : string prop option; [@option]
      (** principal_display_name *)
  principal_id : string prop;  (** principal_id *)
}
[@@deriving yojson_of]
(** eligible_authorization__just_in_time_access_policy__approver *)

type eligible_authorization__just_in_time_access_policy = {
  maximum_activation_duration : string prop option; [@option]
      (** maximum_activation_duration *)
  multi_factor_auth_provider : string prop option; [@option]
      (** multi_factor_auth_provider *)
  approver :
    eligible_authorization__just_in_time_access_policy__approver list;
}
[@@deriving yojson_of]
(** eligible_authorization__just_in_time_access_policy *)

type eligible_authorization = {
  principal_display_name : string prop option; [@option]
      (** principal_display_name *)
  principal_id : string prop;  (** principal_id *)
  role_definition_id : string prop;  (** role_definition_id *)
  just_in_time_access_policy :
    eligible_authorization__just_in_time_access_policy list;
}
[@@deriving yojson_of]
(** eligible_authorization *)

type plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** plan *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lighthouse_definition = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  lighthouse_definition_id : string prop option; [@option]
      (** lighthouse_definition_id *)
  managing_tenant_id : string prop;  (** managing_tenant_id *)
  name : string prop;  (** name *)
  scope : string prop;  (** scope *)
  authorization : authorization list;
  eligible_authorization : eligible_authorization list;
  plan : plan list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition *)

let authorization ?delegated_role_definition_ids
    ?principal_display_name ~principal_id ~role_definition_id () :
    authorization =
  {
    delegated_role_definition_ids;
    principal_display_name;
    principal_id;
    role_definition_id;
  }

let eligible_authorization__just_in_time_access_policy__approver
    ?principal_display_name ~principal_id () :
    eligible_authorization__just_in_time_access_policy__approver =
  { principal_display_name; principal_id }

let eligible_authorization__just_in_time_access_policy
    ?maximum_activation_duration ?multi_factor_auth_provider
    ~approver () : eligible_authorization__just_in_time_access_policy
    =
  {
    maximum_activation_duration;
    multi_factor_auth_provider;
    approver;
  }

let eligible_authorization ?principal_display_name ~principal_id
    ~role_definition_id ~just_in_time_access_policy () :
    eligible_authorization =
  {
    principal_display_name;
    principal_id;
    role_definition_id;
    just_in_time_access_policy;
  }

let plan ~name ~product ~publisher ~version () : plan =
  { name; product; publisher; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lighthouse_definition ?description ?id
    ?lighthouse_definition_id ?timeouts ~managing_tenant_id ~name
    ~scope ~authorization ~eligible_authorization ~plan () :
    azurerm_lighthouse_definition =
  {
    description;
    id;
    lighthouse_definition_id;
    managing_tenant_id;
    name;
    scope;
    authorization;
    eligible_authorization;
    plan;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  lighthouse_definition_id : string prop;
  managing_tenant_id : string prop;
  name : string prop;
  scope : string prop;
}

let register ?tf_module ?description ?id ?lighthouse_definition_id
    ?timeouts ~managing_tenant_id ~name ~scope ~authorization
    ~eligible_authorization ~plan __resource_id =
  let __resource_type = "azurerm_lighthouse_definition" in
  let __resource =
    azurerm_lighthouse_definition ?description ?id
      ?lighthouse_definition_id ?timeouts ~managing_tenant_id ~name
      ~scope ~authorization ~eligible_authorization ~plan ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lighthouse_definition __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       lighthouse_definition_id =
         Prop.computed __resource_type __resource_id
           "lighthouse_definition_id";
       managing_tenant_id =
         Prop.computed __resource_type __resource_id
           "managing_tenant_id";
       name = Prop.computed __resource_type __resource_id "name";
       scope = Prop.computed __resource_type __resource_id "scope";
     }
      : t)
  in
  __resource_attributes
