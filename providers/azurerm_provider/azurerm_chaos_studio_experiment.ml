(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_chaos_studio_experiment__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__identity *)

type azurerm_chaos_studio_experiment__selectors = {
  chaos_studio_target_ids : string prop list;
      (** chaos_studio_target_ids *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__selectors *)

type azurerm_chaos_studio_experiment__steps__branch__actions = {
  action_type : string prop;  (** action_type *)
  duration : string prop option; [@option]  (** duration *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  selector_name : string prop option; [@option]  (** selector_name *)
  urn : string prop option; [@option]  (** urn *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__steps__branch__actions *)

type azurerm_chaos_studio_experiment__steps__branch = {
  name : string prop;  (** name *)
  actions :
    azurerm_chaos_studio_experiment__steps__branch__actions list;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__steps__branch *)

type azurerm_chaos_studio_experiment__steps = {
  name : string prop;  (** name *)
  branch : azurerm_chaos_studio_experiment__steps__branch list;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__steps *)

type azurerm_chaos_studio_experiment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment__timeouts *)

type azurerm_chaos_studio_experiment = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  identity : azurerm_chaos_studio_experiment__identity list;
  selectors : azurerm_chaos_studio_experiment__selectors list;
  steps : azurerm_chaos_studio_experiment__steps list;
  timeouts : azurerm_chaos_studio_experiment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_experiment *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_chaos_studio_experiment ?id ?timeouts ~location ~name
    ~resource_group_name ~identity ~selectors ~steps __resource_id =
  let __resource_type = "azurerm_chaos_studio_experiment" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       identity;
       selectors;
       steps;
       timeouts;
     }
      : azurerm_chaos_studio_experiment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_experiment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
