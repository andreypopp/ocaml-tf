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

type azurerm_batch_application = {
  account_name : string prop;  (** account_name *)
  allow_updates : bool prop option; [@option]  (** allow_updates *)
  default_version : string prop option; [@option]
      (** default_version *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_application *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_application ?allow_updates ?default_version
    ?display_name ?id ?timeouts ~account_name ~name
    ~resource_group_name () : azurerm_batch_application =
  {
    account_name;
    allow_updates;
    default_version;
    display_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  account_name : string prop;
  allow_updates : bool prop;
  default_version : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?allow_updates ?default_version ?display_name ?id ?timeouts
    ~account_name ~name ~resource_group_name __id =
  let __type = "azurerm_batch_application" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       allow_updates = Prop.computed __type __id "allow_updates";
       default_version = Prop.computed __type __id "default_version";
       display_name = Prop.computed __type __id "display_name";
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
      yojson_of_azurerm_batch_application
        (azurerm_batch_application ?allow_updates ?default_version
           ?display_name ?id ?timeouts ~account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_updates ?default_version ?display_name
    ?id ?timeouts ~account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_updates ?default_version ?display_name ?id ?timeouts
      ~account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
