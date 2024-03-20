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

type azurerm_data_factory_pipeline = {
  activities_json : string prop option; [@option]
      (** activities_json *)
  annotations : string prop list option; [@option]
      (** annotations *)
  concurrency : float prop option; [@option]  (** concurrency *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  moniter_metrics_after_duration : string prop option; [@option]
      (** moniter_metrics_after_duration *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  variables : (string * string prop) list option; [@option]
      (** variables *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_pipeline *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_pipeline ?activities_json ?annotations
    ?concurrency ?description ?folder ?id
    ?moniter_metrics_after_duration ?parameters ?variables ?timeouts
    ~data_factory_id ~name () : azurerm_data_factory_pipeline =
  {
    activities_json;
    annotations;
    concurrency;
    data_factory_id;
    description;
    folder;
    id;
    moniter_metrics_after_duration;
    name;
    parameters;
    variables;
    timeouts;
  }

type t = {
  activities_json : string prop;
  annotations : string list prop;
  concurrency : float prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  moniter_metrics_after_duration : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  variables : (string * string) list prop;
}

let make ?activities_json ?annotations ?concurrency ?description
    ?folder ?id ?moniter_metrics_after_duration ?parameters
    ?variables ?timeouts ~data_factory_id ~name __id =
  let __type = "azurerm_data_factory_pipeline" in
  let __attrs =
    ({
       activities_json = Prop.computed __type __id "activities_json";
       annotations = Prop.computed __type __id "annotations";
       concurrency = Prop.computed __type __id "concurrency";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       moniter_metrics_after_duration =
         Prop.computed __type __id "moniter_metrics_after_duration";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       variables = Prop.computed __type __id "variables";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_pipeline
        (azurerm_data_factory_pipeline ?activities_json ?annotations
           ?concurrency ?description ?folder ?id
           ?moniter_metrics_after_duration ?parameters ?variables
           ?timeouts ~data_factory_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?activities_json ?annotations ?concurrency
    ?description ?folder ?id ?moniter_metrics_after_duration
    ?parameters ?variables ?timeouts ~data_factory_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?activities_json ?annotations ?concurrency ?description
      ?folder ?id ?moniter_metrics_after_duration ?parameters
      ?variables ?timeouts ~data_factory_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
