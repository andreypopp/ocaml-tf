(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_document_ai_processor_default_version__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_document_ai_processor_default_version__timeouts *)

type google_document_ai_processor_default_version = {
  processor : string;  (** The processor to set the version on. *)
  version : string;
      (** The version to set. Using 'stable' or 'rc' will cause the API to return the latest version in that release channel.
Apply 'lifecycle.ignore_changes' to the 'version' field to suppress this diff. *)
  timeouts :
    google_document_ai_processor_default_version__timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_processor_default_version *)

let google_document_ai_processor_default_version ?timeouts ~processor
    ~version __resource_id =
  let __resource_type =
    "google_document_ai_processor_default_version"
  in
  let __resource = { processor; version; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_processor_default_version
       __resource);
  ()
