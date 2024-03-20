(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_certificate_binding = {
  certificate_id : string prop;  (** certificate_id *)
  hostname_binding_id : string prop;  (** hostname_binding_id *)
  id : string prop option; [@option]  (** id *)
  ssl_state : string prop;  (** ssl_state *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_binding *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_certificate_binding ?id ?timeouts
    ~certificate_id ~hostname_binding_id ~ssl_state () :
    azurerm_app_service_certificate_binding =
  { certificate_id; hostname_binding_id; id; ssl_state; timeouts }

type t = {
  app_service_name : string prop;
  certificate_id : string prop;
  hostname : string prop;
  hostname_binding_id : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
}

let make ?id ?timeouts ~certificate_id ~hostname_binding_id
    ~ssl_state __id =
  let __type = "azurerm_app_service_certificate_binding" in
  let __attrs =
    ({
       app_service_name =
         Prop.computed __type __id "app_service_name";
       certificate_id = Prop.computed __type __id "certificate_id";
       hostname = Prop.computed __type __id "hostname";
       hostname_binding_id =
         Prop.computed __type __id "hostname_binding_id";
       id = Prop.computed __type __id "id";
       ssl_state = Prop.computed __type __id "ssl_state";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_certificate_binding
        (azurerm_app_service_certificate_binding ?id ?timeouts
           ~certificate_id ~hostname_binding_id ~ssl_state ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate_id
    ~hostname_binding_id ~ssl_state __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate_id ~hostname_binding_id
      ~ssl_state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
