(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?kms_key_name ?project ?timeouts
    ~display_name ~location ~type_ __resource_id =
  let __resource_type = "google_document_ai_processor" in
  let __resource =
    google_document_ai_processor ?id ?kms_key_name ?project ?timeouts
      ~display_name ~location ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_processor __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_name =
         Prop.computed __resource_type __resource_id "kms_key_name";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
