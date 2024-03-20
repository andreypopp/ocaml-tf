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

type azurerm_media_asset = {
  alternate_id : string prop option; [@option]  (** alternate_id *)
  container : string prop option; [@option]  (** container *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_asset *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_asset ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name () : azurerm_media_asset =
  {
    alternate_id;
    container;
    description;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    storage_account_name;
    timeouts;
  }

type t = {
  alternate_id : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_name : string prop;
}

let make ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_media_asset" in
  let __attrs =
    ({
       alternate_id = Prop.computed __type __id "alternate_id";
       container = Prop.computed __type __id "container";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_asset
        (azurerm_media_asset ?alternate_id ?container ?description
           ?id ?storage_account_name ?timeouts
           ~media_services_account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?alternate_id ?container ?description ?id
      ?storage_account_name ?timeouts ~media_services_account_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
