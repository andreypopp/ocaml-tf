(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_document_ai_processor__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_document_ai_processor__timeouts *)

type google_document_ai_processor = {
  display_name : string;  (** The display name. Must be unique. *)
  id : string option; [@option]  (** id *)
  kms_key_name : string option; [@option]
      (** The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management. *)
  location : string;  (** The location of the resource. *)
  project : string option; [@option]  (** project *)
  type_ : string; [@key "type"]
      (** The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes) *)
  timeouts : google_document_ai_processor__timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_processor *)

let google_document_ai_processor ?id ?kms_key_name ?project ?timeouts
    ~display_name ~location ~type_ __resource_id =
  let __resource_type = "google_document_ai_processor" in
  let __resource =
    {
      display_name;
      id;
      kms_key_name;
      location;
      project;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_processor __resource);
  ()
