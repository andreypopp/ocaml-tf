(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_public_ip__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_public_ip__timeouts *)

type azurerm_public_ip = {
  allocation_method : string prop;  (** allocation_method *)
  ddos_protection_mode : string prop option; [@option]
      (** ddos_protection_mode *)
  ddos_protection_plan_id : string prop option; [@option]
      (** ddos_protection_plan_id *)
  domain_name_label : string prop option; [@option]
      (** domain_name_label *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  ip_tags : (string * string prop) list option; [@option]
      (** ip_tags *)
  ip_version : string prop option; [@option]  (** ip_version *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_ip_prefix_id : string prop option; [@option]
      (** public_ip_prefix_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  reverse_fqdn : string prop option; [@option]  (** reverse_fqdn *)
  sku : string prop option; [@option]  (** sku *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : azurerm_public_ip__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_public_ip *)

let azurerm_public_ip ?ddos_protection_mode ?ddos_protection_plan_id
    ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
    ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
    ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_public_ip" in
  let __resource =
    {
      allocation_method;
      ddos_protection_mode;
      ddos_protection_plan_id;
      domain_name_label;
      edge_zone;
      id;
      idle_timeout_in_minutes;
      ip_tags;
      ip_version;
      location;
      name;
      public_ip_prefix_id;
      resource_group_name;
      reverse_fqdn;
      sku;
      sku_tier;
      tags;
      zones;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_public_ip __resource);
  ()
