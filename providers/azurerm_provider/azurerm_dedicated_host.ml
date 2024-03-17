(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dedicated_host__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dedicated_host__timeouts *)

type azurerm_dedicated_host = {
  auto_replace_on_failure : bool option; [@option]
      (** auto_replace_on_failure *)
  dedicated_host_group_id : string;  (** dedicated_host_group_id *)
  id : string option; [@option]  (** id *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  name : string;  (** name *)
  platform_fault_domain : float;  (** platform_fault_domain *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_dedicated_host__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_host *)

let azurerm_dedicated_host ?auto_replace_on_failure ?id ?license_type
    ?tags ?timeouts ~dedicated_host_group_id ~location ~name
    ~platform_fault_domain ~sku_name __resource_id =
  let __resource_type = "azurerm_dedicated_host" in
  let __resource =
    {
      auto_replace_on_failure;
      dedicated_host_group_id;
      id;
      license_type;
      location;
      name;
      platform_fault_domain;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dedicated_host __resource);
  ()
