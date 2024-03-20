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

type azurerm_api_management_product = {
  api_management_name : string prop;  (** api_management_name *)
  approval_required : bool prop option; [@option]
      (** approval_required *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  product_id : string prop;  (** product_id *)
  published : bool prop;  (** published *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_required : bool prop option; [@option]
      (** subscription_required *)
  subscriptions_limit : float prop option; [@option]
      (** subscriptions_limit *)
  terms : string prop option; [@option]  (** terms *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_product ?approval_required ?description
    ?id ?subscription_required ?subscriptions_limit ?terms ?timeouts
    ~api_management_name ~display_name ~product_id ~published
    ~resource_group_name () : azurerm_api_management_product =
  {
    api_management_name;
    approval_required;
    description;
    display_name;
    id;
    product_id;
    published;
    resource_group_name;
    subscription_required;
    subscriptions_limit;
    terms;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  approval_required : bool prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  product_id : string prop;
  published : bool prop;
  resource_group_name : string prop;
  subscription_required : bool prop;
  subscriptions_limit : float prop;
  terms : string prop;
}

let make ?approval_required ?description ?id ?subscription_required
    ?subscriptions_limit ?terms ?timeouts ~api_management_name
    ~display_name ~product_id ~published ~resource_group_name __id =
  let __type = "azurerm_api_management_product" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       approval_required =
         Prop.computed __type __id "approval_required";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       published = Prop.computed __type __id "published";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subscription_required =
         Prop.computed __type __id "subscription_required";
       subscriptions_limit =
         Prop.computed __type __id "subscriptions_limit";
       terms = Prop.computed __type __id "terms";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_product
        (azurerm_api_management_product ?approval_required
           ?description ?id ?subscription_required
           ?subscriptions_limit ?terms ?timeouts ~api_management_name
           ~display_name ~product_id ~published ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?approval_required ?description ?id
    ?subscription_required ?subscriptions_limit ?terms ?timeouts
    ~api_management_name ~display_name ~product_id ~published
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?approval_required ?description ?id ?subscription_required
      ?subscriptions_limit ?terms ?timeouts ~api_management_name
      ~display_name ~product_id ~published ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
