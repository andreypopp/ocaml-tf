(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_document_ai_processor_default_version__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_document_ai_processor_default_version__timeouts *)

type google_document_ai_processor_default_version = {
  id : string prop option; [@option]  (** id *)
  processor : string prop;
      (** The processor to set the version on. *)
  version : string prop;
      (** The version to set. Using 'stable' or 'rc' will cause the API to return the latest version in that release channel.
Apply 'lifecycle.ignore_changes' to the 'version' field to suppress this diff. *)
  timeouts :
    google_document_ai_processor_default_version__timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_processor_default_version *)

type t = {
  id : string prop;
  processor : string prop;
  version : string prop;
}

let google_document_ai_processor_default_version ?id ?timeouts
    ~processor ~version __resource_id =
  let __resource_type =
    "google_document_ai_processor_default_version"
  in
  let __resource =
    ({ id; processor; version; timeouts }
      : google_document_ai_processor_default_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_processor_default_version
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       processor =
         Prop.computed __resource_type __resource_id "processor";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
