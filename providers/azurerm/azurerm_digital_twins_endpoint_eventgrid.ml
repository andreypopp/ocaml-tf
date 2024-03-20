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

type azurerm_digital_twins_endpoint_eventgrid = {
  dead_letter_storage_secret : string prop option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string prop;  (** digital_twins_id *)
  eventgrid_topic_endpoint : string prop;
      (** eventgrid_topic_endpoint *)
  eventgrid_topic_primary_access_key : string prop;
      (** eventgrid_topic_primary_access_key *)
  eventgrid_topic_secondary_access_key : string prop;
      (** eventgrid_topic_secondary_access_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_eventgrid *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_digital_twins_endpoint_eventgrid
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name () :
    azurerm_digital_twins_endpoint_eventgrid =
  {
    dead_letter_storage_secret;
    digital_twins_id;
    eventgrid_topic_endpoint;
    eventgrid_topic_primary_access_key;
    eventgrid_topic_secondary_access_key;
    id;
    name;
    timeouts;
  }

type t = {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventgrid_topic_endpoint : string prop;
  eventgrid_topic_primary_access_key : string prop;
  eventgrid_topic_secondary_access_key : string prop;
  id : string prop;
  name : string prop;
}

let make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name __id =
  let __type = "azurerm_digital_twins_endpoint_eventgrid" in
  let __attrs =
    ({
       dead_letter_storage_secret =
         Prop.computed __type __id "dead_letter_storage_secret";
       digital_twins_id =
         Prop.computed __type __id "digital_twins_id";
       eventgrid_topic_endpoint =
         Prop.computed __type __id "eventgrid_topic_endpoint";
       eventgrid_topic_primary_access_key =
         Prop.computed __type __id
           "eventgrid_topic_primary_access_key";
       eventgrid_topic_secondary_access_key =
         Prop.computed __type __id
           "eventgrid_topic_secondary_access_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_digital_twins_endpoint_eventgrid
        (azurerm_digital_twins_endpoint_eventgrid
           ?dead_letter_storage_secret ?id ?timeouts
           ~digital_twins_id ~eventgrid_topic_endpoint
           ~eventgrid_topic_primary_access_key
           ~eventgrid_topic_secondary_access_key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?dead_letter_storage_secret ?id ?timeouts
    ~digital_twins_id ~eventgrid_topic_endpoint
    ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name __id =
  let (r : _ Tf_core.resource) =
    make ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
      ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
      ~eventgrid_topic_secondary_access_key ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
