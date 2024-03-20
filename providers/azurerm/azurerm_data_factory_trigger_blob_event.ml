(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pipeline = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline) -> ()

let yojson_of_pipeline =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : pipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_data_factory_trigger_blob_event = {
  activated : bool prop option; [@option]
  additional_properties : (string * string prop) list option;
      [@option]
  annotations : string prop list option; [@option]
  blob_path_begins_with : string prop option; [@option]
  blob_path_ends_with : string prop option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  events : string prop list;
  id : string prop option; [@option]
  ignore_empty_blobs : bool prop option; [@option]
  name : string prop;
  storage_account_id : string prop;
  pipeline : pipeline list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_trigger_blob_event) -> ()

let yojson_of_azurerm_data_factory_trigger_blob_event =
  (function
   | {
       activated = v_activated;
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       blob_path_begins_with = v_blob_path_begins_with;
       blob_path_ends_with = v_blob_path_ends_with;
       data_factory_id = v_data_factory_id;
       description = v_description;
       events = v_events;
       id = v_id;
       ignore_empty_blobs = v_ignore_empty_blobs;
       name = v_name;
       storage_account_id = v_storage_account_id;
       pipeline = v_pipeline;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_pipeline v_pipeline in
         ("pipeline", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ignore_empty_blobs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_empty_blobs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_events
         in
         ("events", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_blob_path_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_path_ends_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blob_path_begins_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_path_begins_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_activated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "activated", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_trigger_blob_event ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_trigger_blob_event

[@@@deriving.end]

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
