(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_profile__timeouts *)

type azurerm_cdn_profile = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_cdn_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_profile *)

let azurerm_cdn_profile ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_cdn_profile" in
  let __resource =
    { id; location; name; resource_group_name; sku; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_profile __resource);
  ()
