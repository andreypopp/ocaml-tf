(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl__access_policy = {
  expiry : string prop option; [@option]  (** expiry *)
  permissions : string prop;  (** permissions *)
  start : string prop option; [@option]  (** start *)
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

type azurerm_storage_share = {
  access_tier : string prop option; [@option]  (** access_tier *)
  enabled_protocol : string prop option; [@option]
      (** enabled_protocol *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  quota : float prop;  (** quota *)
  storage_account_name : string prop;  (** storage_account_name *)
  acl : acl list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share *)

let acl__access_policy ?expiry ?start ~permissions () :
    acl__access_policy =
  { expiry; permissions; start }

let acl ~id ~access_policy () : acl = { id; access_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_share ?access_tier ?enabled_protocol ?id
    ?metadata ?timeouts ~name ~quota ~storage_account_name ~acl () :
    azurerm_storage_share =
  {
    access_tier;
    enabled_protocol;
    id;
    metadata;
    name;
    quota;
    storage_account_name;
    acl;
    timeouts;
  }

type t = {
  access_tier : string prop;
  enabled_protocol : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  quota : float prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
  url : string prop;
}

let make ?access_tier ?enabled_protocol ?id ?metadata ?timeouts ~name
    ~quota ~storage_account_name ~acl __id =
  let __type = "azurerm_storage_share" in
  let __attrs =
    ({
       access_tier = Prop.computed __type __id "access_tier";
       enabled_protocol =
         Prop.computed __type __id "enabled_protocol";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       quota = Prop.computed __type __id "quota";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_share
        (azurerm_storage_share ?access_tier ?enabled_protocol ?id
           ?metadata ?timeouts ~name ~quota ~storage_account_name
           ~acl ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?enabled_protocol ?id ?metadata
    ?timeouts ~name ~quota ~storage_account_name ~acl __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?enabled_protocol ?id ?metadata ?timeouts ~name
      ~quota ~storage_account_name ~acl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
