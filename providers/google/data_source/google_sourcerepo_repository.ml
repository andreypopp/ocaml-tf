(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pubsub_configs = {
  message_format : string prop;
  service_account_email : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pubsub_configs) -> ()

let yojson_of_pubsub_configs =
  (function
   | {
       message_format = v_message_format;
       service_account_email = v_service_account_email;
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
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_message_format
         in
         ("message_format", arg) :: bnds
       in
       `Assoc bnds
    : pubsub_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pubsub_configs

[@@@deriving.end]

type google_sourcerepo_repository = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sourcerepo_repository) -> ()

let yojson_of_google_sourcerepo_repository =
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
    : google_sourcerepo_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sourcerepo_repository

[@@@deriving.end]

let google_sourcerepo_repository ?id ?project ~name () :
    google_sourcerepo_repository =
  { id; name; project }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  pubsub_configs : pubsub_configs list prop;
  size : float prop;
  url : string prop;
}

let make ?id ?project ~name __id =
  let __type = "google_sourcerepo_repository" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       pubsub_configs = Prop.computed __type __id "pubsub_configs";
       size = Prop.computed __type __id "size";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sourcerepo_repository
        (google_sourcerepo_repository ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
