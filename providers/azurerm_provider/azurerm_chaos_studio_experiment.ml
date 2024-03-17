(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_chaos_studio_experiment__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__identity *)

type azurerm_chaos_studio_experiment__selectors = {
  chaos_studio_target_ids : string list;
      (** chaos_studio_target_ids *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__selectors *)

type azurerm_chaos_studio_experiment__steps__branch__actions = {
  action_type : string;  (** action_type *)
  duration : string option; [@option]  (** duration *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  selector_name : string option; [@option]  (** selector_name *)
  urn : string option; [@option]  (** urn *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__steps__branch__actions *)

type azurerm_chaos_studio_experiment__steps__branch = {
  name : string;  (** name *)
  actions :
    azurerm_chaos_studio_experiment__steps__branch__actions list;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__steps__branch *)

type azurerm_chaos_studio_experiment__steps = {
  name : string;  (** name *)
  branch : azurerm_chaos_studio_experiment__steps__branch list;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__steps *)

type azurerm_chaos_studio_experiment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__timeouts *)

type azurerm_chaos_studio_experiment = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  identity : azurerm_chaos_studio_experiment__identity list;
  selectors : azurerm_chaos_studio_experiment__selectors list;
  steps : azurerm_chaos_studio_experiment__steps list;
  timeouts : azurerm_chaos_studio_experiment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment *)

let azurerm_chaos_studio_experiment ?timeouts ~location ~name
    ~resource_group_name ~identity ~selectors ~steps __resource_id =
  let __resource_type = "azurerm_chaos_studio_experiment" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      identity;
      selectors;
      steps;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_experiment __resource);
  ()
