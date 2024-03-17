(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_project__timeouts *)

type google_project = {
  auto_create_network : bool option; [@option]
      (** Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily. *)
  billing_account : string option; [@option]
      (** The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have Billing Account Administrator privileges (roles/billing.admin) in the organization. See Google Cloud Billing API Access Control for more details. *)
  folder_id : string option; [@option]
      (** The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to the project.
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** The display name of the project. *)
  org_id : string option; [@option]
      (** The numeric ID of the organization this project belongs to. Changing this forces a new project to be created.  Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization. *)
  project_id : string;
      (** The project ID. Changing this forces a new project to be created. *)
  timeouts : google_project__timeouts option;
}
[@@deriving yojson_of]
(** google_project *)

let google_project ?auto_create_network ?billing_account ?folder_id
    ?labels ?org_id ?timeouts ~name ~project_id __resource_id =
  let __resource_type = "google_project" in
  let __resource =
    {
      auto_create_network;
      billing_account;
      folder_id;
      labels;
      name;
      org_id;
      project_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project __resource);
  ()
