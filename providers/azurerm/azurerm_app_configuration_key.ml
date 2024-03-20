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

type azurerm_app_configuration_key = {
  configuration_store_id : string prop;
      (** configuration_store_id *)
  content_type : string prop option; [@option]  (** content_type *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  label : string prop option; [@option]  (** label *)
  locked : bool prop option; [@option]  (** locked *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
  vault_key_reference : string prop option; [@option]
      (** vault_key_reference *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_configuration_key ?content_type ?etag ?id ?label
    ?locked ?tags ?type_ ?value ?vault_key_reference ?timeouts
    ~configuration_store_id ~key () : azurerm_app_configuration_key =
  {
    configuration_store_id;
    content_type;
    etag;
    id;
    key;
    label;
    locked;
    tags;
    type_;
    value;
    vault_key_reference;
    timeouts;
  }

type t = {
  configuration_store_id : string prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  value : string prop;
  vault_key_reference : string prop;
}

let make ?content_type ?etag ?id ?label ?locked ?tags ?type_ ?value
    ?vault_key_reference ?timeouts ~configuration_store_id ~key __id
    =
  let __type = "azurerm_app_configuration_key" in
  let __attrs =
    ({
       configuration_store_id =
         Prop.computed __type __id "configuration_store_id";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       label = Prop.computed __type __id "label";
       locked = Prop.computed __type __id "locked";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       vault_key_reference =
         Prop.computed __type __id "vault_key_reference";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_configuration_key
        (azurerm_app_configuration_key ?content_type ?etag ?id ?label
           ?locked ?tags ?type_ ?value ?vault_key_reference ?timeouts
           ~configuration_store_id ~key ());
    attrs = __attrs;
  }

let register ?tf_module ?content_type ?etag ?id ?label ?locked ?tags
    ?type_ ?value ?vault_key_reference ?timeouts
    ~configuration_store_id ~key __id =
  let (r : _ Tf_core.resource) =
    make ?content_type ?etag ?id ?label ?locked ?tags ?type_ ?value
      ?vault_key_reference ?timeouts ~configuration_store_id ~key
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
