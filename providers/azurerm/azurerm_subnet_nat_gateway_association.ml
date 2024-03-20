(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_subnet_nat_gateway_association = {
  id : string prop option; [@option]  (** id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_nat_gateway_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_subnet_nat_gateway_association ?id ?timeouts
    ~nat_gateway_id ~subnet_id () :
    azurerm_subnet_nat_gateway_association =
  { id; nat_gateway_id; subnet_id; timeouts }

type t = {
  id : string prop;
  nat_gateway_id : string prop;
  subnet_id : string prop;
}

let make ?id ?timeouts ~nat_gateway_id ~subnet_id __id =
  let __type = "azurerm_subnet_nat_gateway_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       nat_gateway_id = Prop.computed __type __id "nat_gateway_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subnet_nat_gateway_association
        (azurerm_subnet_nat_gateway_association ?id ?timeouts
           ~nat_gateway_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~nat_gateway_id ~subnet_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~nat_gateway_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
