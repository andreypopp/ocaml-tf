(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~private_markdown_storage_enforced __id =
  let __type = "azurerm_portal_tenant_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       private_markdown_storage_enforced =
         Prop.computed __type __id
           "private_markdown_storage_enforced";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_portal_tenant_configuration
        (azurerm_portal_tenant_configuration ?id ?timeouts
           ~private_markdown_storage_enforced ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~private_markdown_storage_enforced __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~private_markdown_storage_enforced __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
