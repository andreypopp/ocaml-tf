(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_portal_tenant_configuration = {
  id : string prop option; [@option]  (** id *)
  private_markdown_storage_enforced : bool prop;
      (** private_markdown_storage_enforced *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_portal_tenant_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_portal_tenant_configuration ?id ?timeouts
    ~private_markdown_storage_enforced () :
    azurerm_portal_tenant_configuration =
  { id; private_markdown_storage_enforced; timeouts }

type t = {
  id : string prop;
  private_markdown_storage_enforced : bool prop;
}

let register ?tf_module ?id ?timeouts
    ~private_markdown_storage_enforced __resource_id =
  let __resource_type = "azurerm_portal_tenant_configuration" in
  let __resource =
    azurerm_portal_tenant_configuration ?id ?timeouts
      ~private_markdown_storage_enforced ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_portal_tenant_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       private_markdown_storage_enforced =
         Prop.computed __resource_type __resource_id
           "private_markdown_storage_enforced";
     }
      : t)
  in
  __resource_attributes
