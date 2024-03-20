(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl__access_policy = {
  expiry : string prop;  (** expiry *)
  permissions : string prop;  (** permissions *)
  start : string prop;  (** start *)
}
[@@deriving yojson_of]
(** acl__access_policy *)

type acl = {
  id : string prop;  (** id *)
  access_policy : acl__access_policy list;
}
[@@deriving yojson_of]
(** acl *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_table = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_account_name : string prop;  (** storage_account_name *)
  acl : acl list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_table *)

let acl__access_policy ~expiry ~permissions ~start () :
    acl__access_policy =
  { expiry; permissions; start }

let acl ~id ~access_policy () : acl = { id; access_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_table ?id ?timeouts ~name ~storage_account_name
    ~acl () : azurerm_storage_table =
  { id; name; storage_account_name; acl; timeouts }

type t = {
  id : string prop;
  name : string prop;
  storage_account_name : string prop;
}

let make ?id ?timeouts ~name ~storage_account_name ~acl __id =
  let __type = "azurerm_storage_table" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_table
        (azurerm_storage_table ?id ?timeouts ~name
           ~storage_account_name ~acl ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~storage_account_name
    ~acl __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~storage_account_name ~acl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
