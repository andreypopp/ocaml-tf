(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_enrichment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_enrichment__timeouts *)

type azurerm_iothub_enrichment = {
  endpoint_names : string list;  (** endpoint_names *)
  id : string option; [@option]  (** id *)
  iothub_name : string;  (** iothub_name *)
  key : string;  (** key *)
  resource_group_name : string;  (** resource_group_name *)
  value : string;  (** value *)
  timeouts : azurerm_iothub_enrichment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_enrichment *)

let azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
    ~iothub_name ~key ~resource_group_name ~value __resource_id =
  let __resource_type = "azurerm_iothub_enrichment" in
  let __resource =
    {
      endpoint_names;
      id;
      iothub_name;
      key;
      resource_group_name;
      value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_enrichment __resource);
  ()
