(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_databox_edge_device__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databox_edge_device__timeouts *)

type azurerm_databox_edge_device__device_properties = {
  capacity : float prop;  (** capacity *)
  configured_role_types : string prop list;
      (** configured_role_types *)
  culture : string prop;  (** culture *)
  hcs_version : string prop;  (** hcs_version *)
  model : string prop;  (** model *)
  node_count : float prop;  (** node_count *)
  serial_number : string prop;  (** serial_number *)
  software_version : string prop;  (** software_version *)
  status : string prop;  (** status *)
  time_zone : string prop;  (** time_zone *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_device = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
