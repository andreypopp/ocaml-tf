(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type schedule__expiration = {
  duration_days : float prop option; [@option]
      (** The duration of the assignment in days. *)
  duration_hours : float prop option; [@option]
      (** The duration of the assignment in hours. *)
  end_date_time : string prop option; [@option]
      (** The end date time of the assignment. *)
}
[@@deriving yojson_of]
(** schedule__expiration *)

type schedule = {
  start_date_time : string prop option; [@option]
      (** The start date time. *)
  expiration : schedule__expiration list;
}
[@@deriving yojson_of]
(** The schedule details of this role assignment. *)

type ticket = {
  number : string prop option; [@option]  (** The ticket number. *)
  system : string prop option; [@option]  (** The ticket system. *)
}
[@@deriving yojson_of]
(** The ticket details. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_pim_active_role_assignment = {
  id : string prop option; [@option]  (** id *)
  justification : string prop option; [@option]
      (** The justification of the role assignment. *)
  principal_id : string prop;  (** The principal id. *)
  role_definition_id : string prop;  (** The role definition id. *)
  scope : string prop;  (** The scope. *)
  schedule : schedule list;
  ticket : ticket list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_pim_active_role_assignment *)

let schedule__expiration ?duration_days ?duration_hours
    ?end_date_time () : schedule__expiration =
  { duration_days; duration_hours; end_date_time }

let schedule ?start_date_time ~expiration () : schedule =
  { start_date_time; expiration }

let ticket ?number ?system () : ticket = { number; system }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_pim_active_role_assignment ?id ?justification ?timeouts
    ~principal_id ~role_definition_id ~scope ~schedule ~ticket () :
    azurerm_pim_active_role_assignment =
  {
    id;
    justification;
    principal_id;
    role_definition_id;
    scope;
    schedule;
    ticket;
    timeouts;
  }

type t = {
  id : string prop;
  justification : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

let register ?tf_module ?id ?justification ?timeouts ~principal_id
    ~role_definition_id ~scope ~schedule ~ticket __resource_id =
  let __resource_type = "azurerm_pim_active_role_assignment" in
  let __resource =
    azurerm_pim_active_role_assignment ?id ?justification ?timeouts
      ~principal_id ~role_definition_id ~scope ~schedule ~ticket ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_pim_active_role_assignment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       justification =
         Prop.computed __resource_type __resource_id "justification";
       principal_id =
         Prop.computed __resource_type __resource_id "principal_id";
       principal_type =
         Prop.computed __resource_type __resource_id "principal_type";
       role_definition_id =
         Prop.computed __resource_type __resource_id
           "role_definition_id";
       scope = Prop.computed __resource_type __resource_id "scope";
     }
      : t)
  in
  __resource_attributes
