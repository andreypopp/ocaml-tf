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

type azurerm_automation_python3_package = {
  automation_account_name : string prop;
      (** automation_account_name *)
  content_uri : string prop;  (** content_uri *)
  content_version : string prop option; [@option]
      (** content_version *)
  hash_algorithm : string prop option; [@option]
      (** hash_algorithm *)
  hash_value : string prop option; [@option]  (** hash_value *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_python3_package *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_python3_package ?content_version
    ?hash_algorithm ?hash_value ?id ?tags ?timeouts
    ~automation_account_name ~content_uri ~name ~resource_group_name
    () : azurerm_automation_python3_package =
  {
    automation_account_name;
    content_uri;
    content_version;
    hash_algorithm;
    hash_value;
    id;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  content_uri : string prop;
  content_version : string prop;
  hash_algorithm : string prop;
  hash_value : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?content_version ?hash_algorithm ?hash_value ?id ?tags
    ?timeouts ~automation_account_name ~content_uri ~name
    ~resource_group_name __id =
  let __type = "azurerm_automation_python3_package" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       content_uri = Prop.computed __type __id "content_uri";
       content_version = Prop.computed __type __id "content_version";
       hash_algorithm = Prop.computed __type __id "hash_algorithm";
       hash_value = Prop.computed __type __id "hash_value";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_python3_package
        (azurerm_automation_python3_package ?content_version
           ?hash_algorithm ?hash_value ?id ?tags ?timeouts
           ~automation_account_name ~content_uri ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?content_version ?hash_algorithm ?hash_value
    ?id ?tags ?timeouts ~automation_account_name ~content_uri ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?content_version ?hash_algorithm ?hash_value ?id ?tags
      ?timeouts ~automation_account_name ~content_uri ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
