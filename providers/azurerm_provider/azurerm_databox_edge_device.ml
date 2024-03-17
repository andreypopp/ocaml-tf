(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_databox_edge_device__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_device__timeouts *)

type azurerm_databox_edge_device__device_properties = {
  capacity : float;  (** capacity *)
  configured_role_types : string list;  (** configured_role_types *)
  culture : string;  (** culture *)
  hcs_version : string;  (** hcs_version *)
  model : string;  (** model *)
  node_count : float;  (** node_count *)
  serial_number : string;  (** serial_number *)
  software_version : string;  (** software_version *)
  status : string;  (** status *)
  time_zone : string;  (** time_zone *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_device = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_databox_edge_device__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databox_edge_device *)

let azurerm_databox_edge_device ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_databox_edge_device" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databox_edge_device __resource);
  ()
