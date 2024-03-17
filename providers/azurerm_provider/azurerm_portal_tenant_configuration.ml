(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_portal_tenant_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_portal_tenant_configuration__timeouts *)

type azurerm_portal_tenant_configuration = {
  id : string prop option; [@option]  (** id *)
  private_markdown_storage_enforced : bool prop;
      (** private_markdown_storage_enforced *)
  timeouts : azurerm_portal_tenant_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_portal_tenant_configuration *)

let azurerm_portal_tenant_configuration ?id ?timeouts
    ~private_markdown_storage_enforced __resource_id =
  let __resource_type = "azurerm_portal_tenant_configuration" in
  let __resource =
    { id; private_markdown_storage_enforced; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_portal_tenant_configuration __resource);
  ()
