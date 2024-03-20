(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_notification = {
  bucket : string prop;
  custom_attributes : (string * string prop) list option; [@option]
  event_types : string prop list option; [@option]
  id : string prop option; [@option]
  object_name_prefix : string prop option; [@option]
  payload_format : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_notification) -> ()

let yojson_of_google_storage_notification =
  (function
   | {
       bucket = v_bucket;
       custom_attributes = v_custom_attributes;
       event_types = v_event_types;
       id = v_id;
       object_name_prefix = v_object_name_prefix;
       payload_format = v_payload_format;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_payload_format
         in
         ("payload_format", arg) :: bnds
       in
       let bnds =
         match v_object_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_name_prefix", arg in
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
         match v_event_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_attributes with
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
             let bnd = "custom_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_notification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_notification

[@@@deriving.end]

let google_storage_notification ?custom_attributes ?event_types ?id
    ?object_name_prefix ~bucket ~payload_format ~topic () :
    google_storage_notification =
  {
    bucket;
    custom_attributes;
    event_types;
    id;
    object_name_prefix;
    payload_format;
    topic;
  }

type t = {
  bucket : string prop;
  custom_attributes : (string * string) list prop;
  event_types : string list prop;
  id : string prop;
  notification_id : string prop;
  object_name_prefix : string prop;
  payload_format : string prop;
  self_link : string prop;
  topic : string prop;
}

let make ?custom_attributes ?event_types ?id ?object_name_prefix
    ~bucket ~payload_format ~topic __id =
  let __type = "google_storage_notification" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       custom_attributes =
         Prop.computed __type __id "custom_attributes";
       event_types = Prop.computed __type __id "event_types";
       id = Prop.computed __type __id "id";
       notification_id = Prop.computed __type __id "notification_id";
       object_name_prefix =
         Prop.computed __type __id "object_name_prefix";
       payload_format = Prop.computed __type __id "payload_format";
       self_link = Prop.computed __type __id "self_link";
       topic = Prop.computed __type __id "topic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_notification
        (google_storage_notification ?custom_attributes ?event_types
           ?id ?object_name_prefix ~bucket ~payload_format ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_attributes ?event_types ?id
    ?object_name_prefix ~bucket ~payload_format ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?custom_attributes ?event_types ?id ?object_name_prefix
      ~bucket ~payload_format ~topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
