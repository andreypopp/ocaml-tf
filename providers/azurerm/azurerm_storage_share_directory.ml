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

type azurerm_storage_share_directory = {
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  share_name : string prop option; [@option]  (** share_name *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  storage_share_id : string prop option; [@option]
      (** storage_share_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_directory *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_share_directory ?id ?metadata ?share_name
    ?storage_account_name ?storage_share_id ?timeouts ~name () :
    azurerm_storage_share_directory =
  {
    id;
    metadata;
    name;
    share_name;
    storage_account_name;
    storage_share_id;
    timeouts;
  }

type t = {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  share_name : string prop;
  storage_account_name : string prop;
  storage_share_id : string prop;
}

let make ?id ?metadata ?share_name ?storage_account_name
    ?storage_share_id ?timeouts ~name __id =
  let __type = "azurerm_storage_share_directory" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       share_name = Prop.computed __type __id "share_name";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_share_id =
         Prop.computed __type __id "storage_share_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_share_directory
        (azurerm_storage_share_directory ?id ?metadata ?share_name
           ?storage_account_name ?storage_share_id ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?share_name
    ?storage_account_name ?storage_share_id ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?share_name ?storage_account_name
      ?storage_share_id ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
