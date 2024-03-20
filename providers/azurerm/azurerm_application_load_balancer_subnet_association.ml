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

let make ?id ?tags ?timeouts ~application_load_balancer_id ~name
    ~subnet_id __id =
  let __type =
    "azurerm_application_load_balancer_subnet_association"
  in
  let __attrs =
    ({
       application_load_balancer_id =
         Prop.computed __type __id "application_load_balancer_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_load_balancer_subnet_association
        (azurerm_application_load_balancer_subnet_association ?id
           ?tags ?timeouts ~application_load_balancer_id ~name
           ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~application_load_balancer_id ~name ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~application_load_balancer_id ~name
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
