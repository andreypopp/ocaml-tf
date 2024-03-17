(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_pim_eligible_role_assignment__schedule__expiration = {
  duration_days : float option; [@option]
      (** The duration of the assignment in days. *)
  duration_hours : float option; [@option]
      (** The duration of the assignment in hours. *)
  end_date_time : string option; [@option]
      (** The end date time of the assignment. *)
}
[@@deriving yojson_of]
(** azurerm_pim_eligible_role_assignment__schedule__expiration *)

type azurerm_pim_eligible_role_assignment__schedule = {
  start_date_time : string option; [@option]
      (** The start date time. *)
  expiration :
    azurerm_pim_eligible_role_assignment__schedule__expiration list;
}
[@@deriving yojson_of]
(** The schedule details of this eligible role assignment. *)

type azurerm_pim_eligible_role_assignment__ticket = {
  number : string option; [@option]  (** The ticket number. *)
  system : string option; [@option]  (** The ticket system. *)
}
[@@deriving yojson_of]
(** Ticket details relating to the assignment. *)

type azurerm_pim_eligible_role_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_pim_eligible_role_assignment__timeouts *)

type azurerm_pim_eligible_role_assignment = {
  id : string option; [@option]  (** id *)
  justification : string option; [@option]
      (** The justification of the eligible role assignment. *)
  principal_id : string;  (** The principal id. *)
  role_definition_id : string;  (** The role definition id. *)
  scope : string;  (** The scope. *)
  schedule : azurerm_pim_eligible_role_assignment__schedule list;
  ticket : azurerm_pim_eligible_role_assignment__ticket list;
  timeouts : azurerm_pim_eligible_role_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_pim_eligible_role_assignment *)

let azurerm_pim_eligible_role_assignment ?id ?justification ?timeouts
    ~principal_id ~role_definition_id ~scope ~schedule ~ticket
    __resource_id =
  let __resource_type = "azurerm_pim_eligible_role_assignment" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_pim_eligible_role_assignment __resource);
  ()
