(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_azure_client__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_container_azure_client__timeouts *)

type google_container_azure_client = {
  application_id : string;
      (** The Azure Active Directory Application ID. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location for the resource *)
  name : string;  (** The name of this resource. *)
  project : string option; [@option]
      (** The project for the resource *)
  tenant_id : string;  (** The Azure Active Directory Tenant ID. *)
  timeouts : google_container_azure_client__timeouts option;
}
[@@deriving yojson_of]
(** google_container_azure_client *)

let google_container_azure_client ?id ?project ?timeouts
    ~application_id ~location ~name ~tenant_id __resource_id =
  let __resource_type = "google_container_azure_client" in
  let __resource =
    {
      application_id;
      id;
      location;
      name;
      project;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_azure_client __resource);
  ()
