(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_adogit = {
  branch : string prop;  (** branch *)
  key_vault_key_url : string prop;  (** key_vault_key_url *)
  path : string prop;  (** path *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** catalog_adogit *)

type catalog_github = {
  branch : string prop;  (** branch *)
  key_vault_key_url : string prop;  (** key_vault_key_url *)
  path : string prop;  (** path *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** catalog_github *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_center_catalog = {
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  catalog_adogit : catalog_adogit list;
  catalog_github : catalog_github list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_catalog *)

let catalog_adogit ~branch ~key_vault_key_url ~path ~uri () :
    catalog_adogit =
  { branch; key_vault_key_url; path; uri }

let catalog_github ~branch ~key_vault_key_url ~path ~uri () :
    catalog_github =
  { branch; key_vault_key_url; path; uri }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_center_catalog ?id ?timeouts ~dev_center_id ~name
    ~resource_group_name ~catalog_adogit ~catalog_github () :
    azurerm_dev_center_catalog =
  {
    dev_center_id;
    id;
    name;
    resource_group_name;
    catalog_adogit;
    catalog_github;
    timeouts;
  }

type t = {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~dev_center_id ~name ~resource_group_name
    ~catalog_adogit ~catalog_github __id =
  let __type = "azurerm_dev_center_catalog" in
  let __attrs =
    ({
       dev_center_id = Prop.computed __type __id "dev_center_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_center_catalog
        (azurerm_dev_center_catalog ?id ?timeouts ~dev_center_id
           ~name ~resource_group_name ~catalog_adogit ~catalog_github
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dev_center_id ~name
    ~resource_group_name ~catalog_adogit ~catalog_github __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dev_center_id ~name ~resource_group_name
      ~catalog_adogit ~catalog_github __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
