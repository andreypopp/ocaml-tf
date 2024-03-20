(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_static_site_custom_domain = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  static_site_id : string prop;  (** static_site_id *)
  validation_type : string prop option; [@option]
      (** validation_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_site_custom_domain *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_static_site_custom_domain ?id ?validation_type ?timeouts
    ~domain_name ~static_site_id () :
    azurerm_static_site_custom_domain =
  { domain_name; id; static_site_id; validation_type; timeouts }

type t = {
  domain_name : string prop;
  id : string prop;
  static_site_id : string prop;
  validation_token : string prop;
  validation_type : string prop;
}

let make ?id ?validation_type ?timeouts ~domain_name ~static_site_id
    __id =
  let __type = "azurerm_static_site_custom_domain" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       static_site_id = Prop.computed __type __id "static_site_id";
       validation_token =
         Prop.computed __type __id "validation_token";
       validation_type = Prop.computed __type __id "validation_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_static_site_custom_domain
        (azurerm_static_site_custom_domain ?id ?validation_type
           ?timeouts ~domain_name ~static_site_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validation_type ?timeouts ~domain_name
    ~static_site_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validation_type ?timeouts ~domain_name ~static_site_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
