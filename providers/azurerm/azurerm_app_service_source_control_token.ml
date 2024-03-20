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

type azurerm_app_service_source_control_token = {
  id : string prop option; [@option]  (** id *)
  token : string prop;  (** token *)
  token_secret : string prop option; [@option]  (** token_secret *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_token *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_source_control_token ?id ?token_secret
    ?timeouts ~token ~type_ () :
    azurerm_app_service_source_control_token =
  { id; token; token_secret; type_; timeouts }

type t = {
  id : string prop;
  token : string prop;
  token_secret : string prop;
  type_ : string prop;
}

let make ?id ?token_secret ?timeouts ~token ~type_ __id =
  let __type = "azurerm_app_service_source_control_token" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       token = Prop.computed __type __id "token";
       token_secret = Prop.computed __type __id "token_secret";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_source_control_token
        (azurerm_app_service_source_control_token ?id ?token_secret
           ?timeouts ~token ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?token_secret ?timeouts ~token ~type_
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?token_secret ?timeouts ~token ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
