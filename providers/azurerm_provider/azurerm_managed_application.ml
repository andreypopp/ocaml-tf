(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_application__plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  promotion_code : string prop option; [@option]
      (** promotion_code *)
  publisher : string prop;  (** publisher *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_managed_application__plan *)

type azurerm_managed_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_application__timeouts *)

type azurerm_managed_application = {
  application_definition_id : string prop option; [@option]
      (** application_definition_id *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop;
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  parameter_values : string prop option; [@option]
      (** parameter_values *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  plan : azurerm_managed_application__plan list;
  timeouts : azurerm_managed_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_application *)

let azurerm_managed_application ?application_definition_id ?id
    ?parameter_values ?parameters ?tags ?timeouts ~kind ~location
    ~managed_resource_group_name ~name ~resource_group_name ~plan
    __resource_id =
  let __resource_type = "azurerm_managed_application" in
  let __resource =
    {
      application_definition_id;
      id;
      kind;
      location;
      managed_resource_group_name;
      name;
      parameter_values;
      parameters;
      resource_group_name;
      tags;
      plan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_application __resource);
  ()
