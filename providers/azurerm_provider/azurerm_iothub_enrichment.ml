(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_enrichment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_enrichment__timeouts *)

type azurerm_iothub_enrichment = {
  endpoint_names : string prop list;  (** endpoint_names *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  key : string prop;  (** key *)
  resource_group_name : string prop;  (** resource_group_name *)
  value : string prop;  (** value *)
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
