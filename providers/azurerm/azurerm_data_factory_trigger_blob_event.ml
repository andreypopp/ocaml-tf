(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** pipeline *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_trigger_blob_event = {
  activated : bool prop option; [@option]  (** activated *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  blob_path_begins_with : string prop option; [@option]
      (** blob_path_begins_with *)
  blob_path_ends_with : string prop option; [@option]
      (** blob_path_ends_with *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  events : string prop list;  (** events *)
  id : string prop option; [@option]  (** id *)
  ignore_empty_blobs : bool prop option; [@option]
      (** ignore_empty_blobs *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
  pipeline : pipeline list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_blob_event *)

let pipeline ?parameters ~name () : pipeline = { name; parameters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_trigger_blob_event ?activated
    ?additional_properties ?annotations ?blob_path_begins_with
    ?blob_path_ends_with ?description ?id ?ignore_empty_blobs
    ?timeouts ~data_factory_id ~events ~name ~storage_account_id
    ~pipeline () : azurerm_data_factory_trigger_blob_event =
  {
    activated;
    additional_properties;
    annotations;
    blob_path_begins_with;
    blob_path_ends_with;
    data_factory_id;
    description;
    events;
    id;
    ignore_empty_blobs;
    name;
    storage_account_id;
    pipeline;
    timeouts;
  }

type t = {
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  blob_path_begins_with : string prop;
  blob_path_ends_with : string prop;
  data_factory_id : string prop;
  description : string prop;
  events : string list prop;
  id : string prop;
  ignore_empty_blobs : bool prop;
  name : string prop;
  storage_account_id : string prop;
}

let make ?activated ?additional_properties ?annotations
    ?blob_path_begins_with ?blob_path_ends_with ?description ?id
    ?ignore_empty_blobs ?timeouts ~data_factory_id ~events ~name
    ~storage_account_id ~pipeline __id =
  let __type = "azurerm_data_factory_trigger_blob_event" in
  let __attrs =
    ({
       activated = Prop.computed __type __id "activated";
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       blob_path_begins_with =
         Prop.computed __type __id "blob_path_begins_with";
       blob_path_ends_with =
         Prop.computed __type __id "blob_path_ends_with";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       events = Prop.computed __type __id "events";
       id = Prop.computed __type __id "id";
       ignore_empty_blobs =
         Prop.computed __type __id "ignore_empty_blobs";
       name = Prop.computed __type __id "name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_trigger_blob_event
        (azurerm_data_factory_trigger_blob_event ?activated
           ?additional_properties ?annotations ?blob_path_begins_with
           ?blob_path_ends_with ?description ?id ?ignore_empty_blobs
           ?timeouts ~data_factory_id ~events ~name
           ~storage_account_id ~pipeline ());
    attrs = __attrs;
  }

let register ?tf_module ?activated ?additional_properties
    ?annotations ?blob_path_begins_with ?blob_path_ends_with
    ?description ?id ?ignore_empty_blobs ?timeouts ~data_factory_id
    ~events ~name ~storage_account_id ~pipeline __id =
  let (r : _ Tf_core.resource) =
    make ?activated ?additional_properties ?annotations
      ?blob_path_begins_with ?blob_path_ends_with ?description ?id
      ?ignore_empty_blobs ?timeouts ~data_factory_id ~events ~name
      ~storage_account_id ~pipeline __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
