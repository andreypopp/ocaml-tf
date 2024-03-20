(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?zone ?timeouts ~capacity_reservation_group_id
    ~name ~sku __id =
  let __type = "azurerm_capacity_reservation" in
  let __attrs =
    ({
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_capacity_reservation
        (azurerm_capacity_reservation ?id ?tags ?zone ?timeouts
           ~capacity_reservation_group_id ~name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?zone ?timeouts ~capacity_reservation_group_id
      ~name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
