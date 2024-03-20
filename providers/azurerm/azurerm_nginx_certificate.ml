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

type azurerm_nginx_certificate = {
  certificate_virtual_path : string prop;
      (** certificate_virtual_path *)
  id : string prop option; [@option]  (** id *)
  key_vault_secret_id : string prop;  (** key_vault_secret_id *)
  key_virtual_path : string prop;  (** key_virtual_path *)
  name : string prop;  (** name *)
  nginx_deployment_id : string prop;  (** nginx_deployment_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nginx_certificate ?id ?timeouts ~certificate_virtual_path
    ~key_vault_secret_id ~key_virtual_path ~name ~nginx_deployment_id
    () : azurerm_nginx_certificate =
  {
    certificate_virtual_path;
    id;
    key_vault_secret_id;
    key_virtual_path;
    name;
    nginx_deployment_id;
    timeouts;
  }

type t = {
  certificate_virtual_path : string prop;
  id : string prop;
  key_vault_secret_id : string prop;
  key_virtual_path : string prop;
  name : string prop;
  nginx_deployment_id : string prop;
}

let make ?id ?timeouts ~certificate_virtual_path ~key_vault_secret_id
    ~key_virtual_path ~name ~nginx_deployment_id __id =
  let __type = "azurerm_nginx_certificate" in
  let __attrs =
    ({
       certificate_virtual_path =
         Prop.computed __type __id "certificate_virtual_path";
       id = Prop.computed __type __id "id";
       key_vault_secret_id =
         Prop.computed __type __id "key_vault_secret_id";
       key_virtual_path =
         Prop.computed __type __id "key_virtual_path";
       name = Prop.computed __type __id "name";
       nginx_deployment_id =
         Prop.computed __type __id "nginx_deployment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nginx_certificate
        (azurerm_nginx_certificate ?id ?timeouts
           ~certificate_virtual_path ~key_vault_secret_id
           ~key_virtual_path ~name ~nginx_deployment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate_virtual_path
    ~key_vault_secret_id ~key_virtual_path ~name ~nginx_deployment_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate_virtual_path ~key_vault_secret_id
      ~key_virtual_path ~name ~nginx_deployment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
