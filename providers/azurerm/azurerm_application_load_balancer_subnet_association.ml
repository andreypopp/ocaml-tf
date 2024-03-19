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

type azurerm_application_load_balancer_subnet_association = {
  application_load_balancer_id : string prop;
      (** application_load_balancer_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_subnet_association *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_load_balancer_subnet_association ?id ?tags
    ?timeouts ~application_load_balancer_id ~name ~subnet_id () :
    azurerm_application_load_balancer_subnet_association =
  {
    application_load_balancer_id;
    id;
    name;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  application_load_balancer_id : string prop;
  id : string prop;
  name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts
    ~application_load_balancer_id ~name ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_application_load_balancer_subnet_association"
  in
  let __resource =
    azurerm_application_load_balancer_subnet_association ?id ?tags
      ?timeouts ~application_load_balancer_id ~name ~subnet_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_load_balancer_subnet_association
       __resource);
  let __resource_attributes =
    ({
       application_load_balancer_id =
         Prop.computed __resource_type __resource_id
           "application_load_balancer_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
