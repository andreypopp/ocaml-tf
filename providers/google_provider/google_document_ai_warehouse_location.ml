(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_document_ai_warehouse_location__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_document_ai_warehouse_location__timeouts *)

type google_document_ai_warehouse_location = {
  access_control_mode : string;
      (** The access control mode for accessing the customer data. Possible values: [ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI, ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID, ACL_MODE_UNIVERSAL_ACCESS] *)
  database_type : string;
      (** The type of database used to store customer data. Possible values: [DB_INFRA_SPANNER, DB_CLOUD_SQL_POSTGRES] *)
  document_creator_default_role : string option; [@option]
      (** The default role for the person who create a document. Possible values: [DOCUMENT_ADMIN, DOCUMENT_EDITOR, DOCUMENT_VIEWER] *)
  kms_key : string option; [@option]
      (** The KMS key used for CMEK encryption. It is required that
the kms key is in the same region as the endpoint. The
same key will be used for all provisioned resources, if
encryption is available. If the kmsKey is left empty, no
encryption will be enforced. *)
  location : string;
      (** The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}. *)
  project_number : string;
      (** The unique identifier of the project. *)
  timeouts : google_document_ai_warehouse_location__timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_warehouse_location *)

let google_document_ai_warehouse_location
    ?document_creator_default_role ?kms_key ?timeouts
    ~access_control_mode ~database_type ~location ~project_number
    __resource_id =
  let __resource_type = "google_document_ai_warehouse_location" in
  let __resource =
    {
      access_control_mode;
      database_type;
      document_creator_default_role;
      kms_key;
      location;
      project_number;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_warehouse_location __resource);
  ()
