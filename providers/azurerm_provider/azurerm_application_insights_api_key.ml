(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_api_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key__timeouts *)

type azurerm_application_insights_api_key = {
  application_insights_id : string prop;
      (** application_insights_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  read_permissions : string prop list option; [@option]
      (** read_permissions *)
  write_permissions : string prop list option; [@option]
      (** write_permissions *)
  timeouts : azurerm_application_insights_api_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key *)

type t = {
  api_key : string prop;
  application_insights_id : string prop;
  id : string prop;
  name : string prop;
  read_permissions : string list prop;
  write_permissions : string list prop;
}

let azurerm_application_insights_api_key ?id ?read_permissions
    ?write_permissions ?timeouts ~application_insights_id ~name
    __resource_id =
  let __resource_type = "azurerm_application_insights_api_key" in
  let __resource =
    ({
       application_insights_id;
       id;
       name;
       read_permissions;
       write_permissions;
       timeouts;
     }
      : azurerm_application_insights_api_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_api_key __resource);
  let __resource_attributes =
    ({
       api_key =
         Prop.computed __resource_type __resource_id "api_key";
       application_insights_id =
         Prop.computed __resource_type __resource_id
           "application_insights_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       read_permissions =
         Prop.computed __resource_type __resource_id
           "read_permissions";
       write_permissions =
         Prop.computed __resource_type __resource_id
           "write_permissions";
     }
      : t)
  in
  __resource_attributes
