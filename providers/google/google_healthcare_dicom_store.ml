(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification_config = { pubsub_topic : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config) -> ()

let yojson_of_notification_config =
  (function
   | { pubsub_topic = v_pubsub_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pubsub_topic in
         ("pubsub_topic", arg) :: bnds
       in
       `Assoc bnds
    : notification_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_healthcare_dicom_store = {
  dataset : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  notification_config : notification_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_healthcare_dicom_store) -> ()

let yojson_of_google_healthcare_dicom_store =
  (function
   | {
       dataset = v_dataset;
       id = v_id;
       labels = v_labels;
       name = v_name;
       notification_config = v_notification_config;
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
         if [] = v_notification_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_config)
               v_notification_config
           in
           let bnd = "notification_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : google_healthcare_dicom_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_healthcare_dicom_store

[@@@deriving.end]

let notification_config ~pubsub_topic () : notification_config =
  { pubsub_topic }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_dicom_store ?id ?labels
    ?(notification_config = []) ?timeouts ~dataset ~name () :
    google_healthcare_dicom_store =
  { dataset; id; labels; name; notification_config; timeouts }

type t = {
  tf_name : string;
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?(notification_config = []) ?timeouts ~dataset
    ~name __id =
  let __type = "google_healthcare_dicom_store" in
  let __attrs =
    ({
       tf_name = __id;
       dataset = Prop.computed __type __id "dataset";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_dicom_store
        (google_healthcare_dicom_store ?id ?labels
           ~notification_config ?timeouts ~dataset ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?(notification_config = [])
    ?timeouts ~dataset ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~notification_config ?timeouts ~dataset ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
