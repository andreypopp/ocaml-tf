(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_blueprint_assignment = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  lock_exclude_actions : string prop list option; [@option]
      (** lock_exclude_actions *)
  lock_exclude_principals : string prop list option; [@option]
      (** lock_exclude_principals *)
  lock_mode : string prop option; [@option]  (** lock_mode *)
  name : string prop;  (** name *)
  parameter_values : string prop option; [@option]
      (** parameter_values *)
  resource_groups : string prop option; [@option]
      (** resource_groups *)
  target_subscription_id : string prop;
      (** target_subscription_id *)
  version_id : string prop;  (** version_id *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_blueprint_assignment *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_blueprint_assignment ?id ?lock_exclude_actions
    ?lock_exclude_principals ?lock_mode ?parameter_values
    ?resource_groups ?timeouts ~location ~name
    ~target_subscription_id ~version_id ~identity () :
    azurerm_blueprint_assignment =
  {
    id;
    location;
    lock_exclude_actions;
    lock_exclude_principals;
    lock_mode;
    name;
    parameter_values;
    resource_groups;
    target_subscription_id;
    version_id;
    identity;
    timeouts;
  }

type t = {
  blueprint_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  lock_exclude_actions : string list prop;
  lock_exclude_principals : string list prop;
  lock_mode : string prop;
  name : string prop;
  parameter_values : string prop;
  resource_groups : string prop;
  target_subscription_id : string prop;
  type_ : string prop;
  version_id : string prop;
}

let make ?id ?lock_exclude_actions ?lock_exclude_principals
    ?lock_mode ?parameter_values ?resource_groups ?timeouts ~location
    ~name ~target_subscription_id ~version_id ~identity __id =
  let __type = "azurerm_blueprint_assignment" in
  let __attrs =
    ({
       blueprint_name = Prop.computed __type __id "blueprint_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       lock_exclude_actions =
         Prop.computed __type __id "lock_exclude_actions";
       lock_exclude_principals =
         Prop.computed __type __id "lock_exclude_principals";
       lock_mode = Prop.computed __type __id "lock_mode";
       name = Prop.computed __type __id "name";
       parameter_values =
         Prop.computed __type __id "parameter_values";
       resource_groups = Prop.computed __type __id "resource_groups";
       target_subscription_id =
         Prop.computed __type __id "target_subscription_id";
       type_ = Prop.computed __type __id "type";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_blueprint_assignment
        (azurerm_blueprint_assignment ?id ?lock_exclude_actions
           ?lock_exclude_principals ?lock_mode ?parameter_values
           ?resource_groups ?timeouts ~location ~name
           ~target_subscription_id ~version_id ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lock_exclude_actions
    ?lock_exclude_principals ?lock_mode ?parameter_values
    ?resource_groups ?timeouts ~location ~name
    ~target_subscription_id ~version_id ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lock_exclude_actions ?lock_exclude_principals
      ?lock_mode ?parameter_values ?resource_groups ?timeouts
      ~location ~name ~target_subscription_id ~version_id ~identity
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
