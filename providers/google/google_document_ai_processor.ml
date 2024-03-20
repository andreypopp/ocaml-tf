(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_document_ai_processor = {
  display_name : string prop;
      (** The display name. Must be unique. *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management. *)
  location : string prop;  (** The location of the resource. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop; [@key "type"]
      (** The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes) *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_processor *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_document_ai_processor ?id ?kms_key_name ?project ?timeouts
    ~display_name ~location ~type_ () : google_document_ai_processor
    =
  {
    display_name;
    id;
    kms_key_name;
    location;
    project;
    type_;
    timeouts;
  }

type t = {
  display_name : string prop;
  id : string prop;
  kms_key_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
}

let make ?id ?kms_key_name ?project ?timeouts ~display_name ~location
    ~type_ __id =
  let __type = "google_document_ai_processor" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_document_ai_processor
        (google_document_ai_processor ?id ?kms_key_name ?project
           ?timeouts ~display_name ~location ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_name ?project ?timeouts
    ~display_name ~location ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_name ?project ?timeouts ~display_name ~location
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
