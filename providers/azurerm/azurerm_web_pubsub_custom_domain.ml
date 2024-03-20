(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_web_pubsub_custom_domain = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  web_pubsub_custom_certificate_id : string prop;
      (** web_pubsub_custom_certificate_id *)
  web_pubsub_id : string prop;  (** web_pubsub_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_custom_domain *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_web_pubsub_custom_domain ?id ?timeouts ~domain_name ~name
    ~web_pubsub_custom_certificate_id ~web_pubsub_id () :
    azurerm_web_pubsub_custom_domain =
  {
    domain_name;
    id;
    name;
    web_pubsub_custom_certificate_id;
    web_pubsub_id;
    timeouts;
  }

type t = {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  web_pubsub_custom_certificate_id : string prop;
  web_pubsub_id : string prop;
}

let make ?id ?timeouts ~domain_name ~name
    ~web_pubsub_custom_certificate_id ~web_pubsub_id __id =
  let __type = "azurerm_web_pubsub_custom_domain" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       web_pubsub_custom_certificate_id =
         Prop.computed __type __id "web_pubsub_custom_certificate_id";
       web_pubsub_id = Prop.computed __type __id "web_pubsub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_web_pubsub_custom_domain
        (azurerm_web_pubsub_custom_domain ?id ?timeouts ~domain_name
           ~name ~web_pubsub_custom_certificate_id ~web_pubsub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_name ~name
    ~web_pubsub_custom_certificate_id ~web_pubsub_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_name ~name
      ~web_pubsub_custom_certificate_id ~web_pubsub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
