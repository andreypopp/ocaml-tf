(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_pool__timeouts *)

type azurerm_netapp_pool = {
  account_name : string;  (** account_name *)
  encryption_type : string option; [@option]  (** encryption_type *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  qos_type : string option; [@option]  (** qos_type *)
  resource_group_name : string;  (** resource_group_name *)
  service_level : string;  (** service_level *)
  size_in_tb : float;  (** size_in_tb *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_netapp_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_pool *)

let azurerm_netapp_pool ?encryption_type ?id ?qos_type ?tags
    ?timeouts ~account_name ~location ~name ~resource_group_name
    ~service_level ~size_in_tb __resource_id =
  let __resource_type = "azurerm_netapp_pool" in
  let __resource =
    {
      account_name;
      encryption_type;
      id;
      location;
      name;
      qos_type;
      resource_group_name;
      service_level;
      size_in_tb;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_pool __resource);
  ()
