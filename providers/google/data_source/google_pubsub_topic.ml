(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type message_storage_policy = {
  allowed_persistence_regions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : message_storage_policy) -> ()

let yojson_of_message_storage_policy =
  (function
   | { allowed_persistence_regions = v_allowed_persistence_regions }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_persistence_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_persistence_regions
           in
           let bnd = "allowed_persistence_regions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : message_storage_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_message_storage_policy

[@@@deriving.end]

type schema_settings = {
  encoding : string prop;
  schema : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_settings) -> ()

let yojson_of_schema_settings =
  (function
   | { encoding = v_encoding; schema = v_schema } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encoding in
         ("encoding", arg) :: bnds
       in
       `Assoc bnds
    : schema_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_settings

[@@@deriving.end]

type google_pubsub_topic = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_topic) -> ()

let yojson_of_google_pubsub_topic =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_pubsub_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_topic

[@@@deriving.end]

let google_pubsub_topic ?id ?project ~name () : google_pubsub_topic =
  { id; name; project }

type t = {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  message_storage_policy : message_storage_policy list prop;
  name : string prop;
  project : string prop;
  schema_settings : schema_settings list prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?project ~name __id =
  let __type = "google_pubsub_topic" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       message_retention_duration =
         Prop.computed __type __id "message_retention_duration";
       message_storage_policy =
         Prop.computed __type __id "message_storage_policy";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       schema_settings = Prop.computed __type __id "schema_settings";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_topic
        (google_pubsub_topic ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
