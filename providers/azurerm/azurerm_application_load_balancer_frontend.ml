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

type azurerm_application_load_balancer_frontend = {
  application_load_balancer_id : string prop;
      (** application_load_balancer_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_frontend *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_load_balancer_frontend ?id ?tags ?timeouts
    ~application_load_balancer_id ~name () :
    azurerm_application_load_balancer_frontend =
  { application_load_balancer_id; id; name; tags; timeouts }

type t = {
  application_load_balancer_id : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~application_load_balancer_id ~name __id
    =
  let __type = "azurerm_application_load_balancer_frontend" in
  let __attrs =
    ({
       application_load_balancer_id =
         Prop.computed __type __id "application_load_balancer_id";
       fully_qualified_domain_name =
         Prop.computed __type __id "fully_qualified_domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_load_balancer_frontend
        (azurerm_application_load_balancer_frontend ?id ?tags
           ?timeouts ~application_load_balancer_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~application_load_balancer_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~application_load_balancer_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
