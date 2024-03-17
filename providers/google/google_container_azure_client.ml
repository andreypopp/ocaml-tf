(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_azure_client__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_container_azure_client__timeouts *)

type google_container_azure_client = {
  application_id : string prop;
      (** The Azure Active Directory Application ID. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  tenant_id : string prop;
      (** The Azure Active Directory Tenant ID. *)
  timeouts : google_container_azure_client__timeouts option;
}
[@@deriving yojson_of]
(** google_container_azure_client *)

type t = {
  application_id : string prop;
  certificate : string prop;
  create_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  tenant_id : string prop;
  uid : string prop;
}

let google_container_azure_client ?id ?project ?timeouts
    ~application_id ~location ~name ~tenant_id __resource_id =
  let __resource_type = "google_container_azure_client" in
  let __resource =
    ({
       application_id;
       id;
       location;
       name;
       project;
       tenant_id;
       timeouts;
     }
      : google_container_azure_client)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_azure_client __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       uid = Prop.computed __resource_type __resource_id "uid";
     }
      : t)
  in
  __resource_attributes
