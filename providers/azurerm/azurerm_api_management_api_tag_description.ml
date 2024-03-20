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

type azurerm_api_management_api_tag_description = {
  api_tag_id : string prop;  (** api_tag_id *)
  description : string prop option; [@option]  (** description *)
  external_documentation_description : string prop option; [@option]
      (** external_documentation_description *)
  external_documentation_url : string prop option; [@option]
      (** external_documentation_url *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag_description *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_tag_description ?description
    ?external_documentation_description ?external_documentation_url
    ?id ?timeouts ~api_tag_id () :
    azurerm_api_management_api_tag_description =
  {
    api_tag_id;
    description;
    external_documentation_description;
    external_documentation_url;
    id;
    timeouts;
  }

type t = {
  api_tag_id : string prop;
  description : string prop;
  external_documentation_description : string prop;
  external_documentation_url : string prop;
  id : string prop;
}

let make ?description ?external_documentation_description
    ?external_documentation_url ?id ?timeouts ~api_tag_id __id =
  let __type = "azurerm_api_management_api_tag_description" in
  let __attrs =
    ({
       api_tag_id = Prop.computed __type __id "api_tag_id";
       description = Prop.computed __type __id "description";
       external_documentation_description =
         Prop.computed __type __id
           "external_documentation_description";
       external_documentation_url =
         Prop.computed __type __id "external_documentation_url";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_tag_description
        (azurerm_api_management_api_tag_description ?description
           ?external_documentation_description
           ?external_documentation_url ?id ?timeouts ~api_tag_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?external_documentation_description ?external_documentation_url
    ?id ?timeouts ~api_tag_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?external_documentation_description
      ?external_documentation_url ?id ?timeouts ~api_tag_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
