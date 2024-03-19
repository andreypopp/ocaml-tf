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

type azurerm_email_communication_service = {
  data_location : string prop;  (** data_location *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_email_communication_service *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_email_communication_service ?id ?tags ?timeouts
    ~data_location ~name ~resource_group_name () :
    azurerm_email_communication_service =
  { data_location; id; name; resource_group_name; tags; timeouts }

type t = {
  data_location : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~data_location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_email_communication_service" in
  let __resource =
    azurerm_email_communication_service ?id ?tags ?timeouts
      ~data_location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_email_communication_service __resource);
  let __resource_attributes =
    ({
       data_location =
         Prop.computed __resource_type __resource_id "data_location";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
