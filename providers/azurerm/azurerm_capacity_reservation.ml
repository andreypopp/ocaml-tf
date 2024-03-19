(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_capacity_reservation = {
  capacity_reservation_group_id : string prop;
      (** capacity_reservation_group_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone : string prop option; [@option]  (** zone *)
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation *)

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_capacity_reservation ?id ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku () :
    azurerm_capacity_reservation =
  {
    capacity_reservation_group_id;
    id;
    name;
    tags;
    zone;
    sku;
    timeouts;
  }

type t = {
  capacity_reservation_group_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

let register ?tf_module ?id ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku __resource_id =
  let __resource_type = "azurerm_capacity_reservation" in
  let __resource =
    azurerm_capacity_reservation ?id ?tags ?zone ?timeouts
      ~capacity_reservation_group_id ~name ~sku ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_capacity_reservation __resource);
  let __resource_attributes =
    ({
       capacity_reservation_group_id =
         Prop.computed __resource_type __resource_id
           "capacity_reservation_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
