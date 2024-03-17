(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_public_ip__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_public_ip__timeouts *)

type azurerm_public_ip = {
  allocation_method : string;  (** allocation_method *)
  ddos_protection_mode : string option; [@option]
      (** ddos_protection_mode *)
  ddos_protection_plan_id : string option; [@option]
      (** ddos_protection_plan_id *)
  domain_name_label : string option; [@option]
      (** domain_name_label *)
  edge_zone : string option; [@option]  (** edge_zone *)
  id : string option; [@option]  (** id *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  ip_tags : (string * string) list option; [@option]  (** ip_tags *)
  ip_version : string option; [@option]  (** ip_version *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_ip_prefix_id : string option; [@option]
      (** public_ip_prefix_id *)
  resource_group_name : string;  (** resource_group_name *)
  reverse_fqdn : string option; [@option]  (** reverse_fqdn *)
  sku : string option; [@option]  (** sku *)
  sku_tier : string option; [@option]  (** sku_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
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
