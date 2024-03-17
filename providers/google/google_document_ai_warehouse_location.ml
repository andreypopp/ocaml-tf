(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_document_ai_warehouse_location__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_document_ai_warehouse_location__timeouts *)

type google_document_ai_warehouse_location = {
  access_control_mode : string prop;
      (** The access control mode for accessing the customer data. Possible values: [ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI, ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID, ACL_MODE_UNIVERSAL_ACCESS] *)
  database_type : string prop;
      (** The type of database used to store customer data. Possible values: [DB_INFRA_SPANNER, DB_CLOUD_SQL_POSTGRES] *)
  document_creator_default_role : string prop option; [@option]
      (** The default role for the person who create a document. Possible values: [DOCUMENT_ADMIN, DOCUMENT_EDITOR, DOCUMENT_VIEWER] *)
  id : string prop option; [@option]  (** id *)
  kms_key : string prop option; [@option]
      (** The KMS key used for CMEK encryption. It is required that
the kms key is in the same region as the endpoint. The
same key will be used for all provisioned resources, if
encryption is available. If the kmsKey is left empty, no
encryption will be enforced. *)
  location : string prop;
      (** The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}. *)
  project_number : string prop;
      (** The unique identifier of the project. *)
  timeouts : google_document_ai_warehouse_location__timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_warehouse_location *)

type t = {
  access_control_mode : string prop;
  database_type : string prop;
  document_creator_default_role : string prop;
  id : string prop;
  kms_key : string prop;
  location : string prop;
  project_number : string prop;
}

let google_document_ai_warehouse_location
    ?document_creator_default_role ?id ?kms_key ?timeouts
    ~access_control_mode ~database_type ~location ~project_number
    __resource_id =
  let __resource_type = "google_document_ai_warehouse_location" in
  let __resource =
    ({
       access_control_mode;
       database_type;
       document_creator_default_role;
       id;
       kms_key;
       location;
       project_number;
       timeouts;
     }
      : google_document_ai_warehouse_location)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_document_ai_warehouse_location __resource);
  let __resource_attributes =
    ({
       access_control_mode =
         Prop.computed __resource_type __resource_id
           "access_control_mode";
       database_type =
         Prop.computed __resource_type __resource_id "database_type";
       document_creator_default_role =
         Prop.computed __resource_type __resource_id
           "document_creator_default_role";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key =
         Prop.computed __resource_type __resource_id "kms_key";
       location =
         Prop.computed __resource_type __resource_id "location";
       project_number =
         Prop.computed __resource_type __resource_id "project_number";
     }
      : t)
  in
  __resource_attributes
