(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cdn_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_profile__timeouts *)

type azurerm_cdn_profile = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_cdn_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_profile *)

let azurerm_cdn_profile ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_cdn_profile" in
  let __resource =
    { location; name; resource_group_name; sku; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_profile __resource);
  ()
