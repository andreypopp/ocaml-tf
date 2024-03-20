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

type azurerm_log_analytics_query_pack_query = {
  additional_settings_json : string prop option; [@option]
      (** additional_settings_json *)
  body : string prop;  (** body *)
  categories : string prop list option; [@option]  (** categories *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  query_pack_id : string prop;  (** query_pack_id *)
  resource_types : string prop list option; [@option]
      (** resource_types *)
  solutions : string prop list option; [@option]  (** solutions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_query_pack_query *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_query_pack_query ?additional_settings_json
    ?categories ?description ?id ?name ?resource_types ?solutions
    ?tags ?timeouts ~body ~display_name ~query_pack_id () :
    azurerm_log_analytics_query_pack_query =
  {
    additional_settings_json;
    body;
    categories;
    description;
    display_name;
    id;
    name;
    query_pack_id;
    resource_types;
    solutions;
    tags;
    timeouts;
  }

type t = {
  additional_settings_json : string prop;
  body : string prop;
  categories : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  query_pack_id : string prop;
  resource_types : string list prop;
  solutions : string list prop;
  tags : (string * string) list prop;
}

let make ?additional_settings_json ?categories ?description ?id ?name
    ?resource_types ?solutions ?tags ?timeouts ~body ~display_name
    ~query_pack_id __id =
  let __type = "azurerm_log_analytics_query_pack_query" in
  let __attrs =
    ({
       additional_settings_json =
         Prop.computed __type __id "additional_settings_json";
       body = Prop.computed __type __id "body";
       categories = Prop.computed __type __id "categories";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query_pack_id = Prop.computed __type __id "query_pack_id";
       resource_types = Prop.computed __type __id "resource_types";
       solutions = Prop.computed __type __id "solutions";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_query_pack_query
        (azurerm_log_analytics_query_pack_query
           ?additional_settings_json ?categories ?description ?id
           ?name ?resource_types ?solutions ?tags ?timeouts ~body
           ~display_name ~query_pack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_settings_json ?categories
    ?description ?id ?name ?resource_types ?solutions ?tags ?timeouts
    ~body ~display_name ~query_pack_id __id =
  let (r : _ Tf_core.resource) =
    make ?additional_settings_json ?categories ?description ?id ?name
      ?resource_types ?solutions ?tags ?timeouts ~body ~display_name
      ~query_pack_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
