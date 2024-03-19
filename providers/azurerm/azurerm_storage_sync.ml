(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_sync = {
  id : string prop option; [@option]  (** id *)
  incoming_traffic_policy : string prop option; [@option]
      (** incoming_traffic_policy *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_sync ?id ?incoming_traffic_policy ?tags ?timeouts
    ~location ~name ~resource_group_name () : azurerm_storage_sync =
  {
    id;
    incoming_traffic_policy;
    location;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  incoming_traffic_policy : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?incoming_traffic_policy ?tags ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_storage_sync" in
  let __resource =
    azurerm_storage_sync ?id ?incoming_traffic_policy ?tags ?timeouts
      ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_sync __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       incoming_traffic_policy =
         Prop.computed __resource_type __resource_id
           "incoming_traffic_policy";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
