(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_application__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  promotion_code : string option; [@option]  (** promotion_code *)
  publisher : string;  (** publisher *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_managed_application__plan *)

type azurerm_managed_application__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_application__timeouts *)

type azurerm_managed_application = {
  application_definition_id : string option; [@option]
      (** application_definition_id *)
  id : string option; [@option]  (** id *)
  kind : string;  (** kind *)
  location : string;  (** location *)
  managed_resource_group_name : string;
      (** managed_resource_group_name *)
  name : string;  (** name *)
  parameter_values : string option; [@option]
      (** parameter_values *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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
