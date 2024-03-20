(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_container_app_custom_domain = {
  certificate_binding_type : string prop;
      (** The Binding type. Possible values include `Disabled` and `SniEnabled`. *)
  container_app_environment_certificate_id : string prop;
      (** container_app_environment_certificate_id *)
  container_app_id : string prop;  (** container_app_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The hostname of the Certificate. Must be the CN or a named SAN in the certificate. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_custom_domain *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_container_app_custom_domain ?id ?timeouts
    ~certificate_binding_type
    ~container_app_environment_certificate_id ~container_app_id ~name
    () : azurerm_container_app_custom_domain =
  {
    certificate_binding_type;
    container_app_environment_certificate_id;
    container_app_id;
    id;
    name;
    timeouts;
  }

type t = {
  certificate_binding_type : string prop;
  container_app_environment_certificate_id : string prop;
  container_app_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~certificate_binding_type
    ~container_app_environment_certificate_id ~container_app_id ~name
    __id =
  let __type = "azurerm_container_app_custom_domain" in
  let __attrs =
    ({
       certificate_binding_type =
         Prop.computed __type __id "certificate_binding_type";
       container_app_environment_certificate_id =
         Prop.computed __type __id
           "container_app_environment_certificate_id";
       container_app_id =
         Prop.computed __type __id "container_app_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_custom_domain
        (azurerm_container_app_custom_domain ?id ?timeouts
           ~certificate_binding_type
           ~container_app_environment_certificate_id
           ~container_app_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate_binding_type
    ~container_app_environment_certificate_id ~container_app_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate_binding_type
      ~container_app_environment_certificate_id ~container_app_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
