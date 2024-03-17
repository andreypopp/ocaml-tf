(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_apigee_sharedflow_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_sharedflow_deployment__timeouts *)

type google_apigee_sharedflow_deployment = {
  environment : string;  (** The resource ID of the environment. *)
  org_id : string;
      (** The Apigee Organization associated with the Apigee instance *)
  revision : string;
      (** Revision of the Sharedflow to be deployed. *)
  service_account : string option; [@option]
      (** The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com. *)
  sharedflow_id : string;
      (** Id of the Sharedflow to be deployed. *)
  timeouts : google_apigee_sharedflow_deployment__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sharedflow_deployment *)

let google_apigee_sharedflow_deployment ?service_account ?timeouts
    ~environment ~org_id ~revision ~sharedflow_id __resource_id =
  let __resource_type = "google_apigee_sharedflow_deployment" in
  let __resource =
    {
      environment;
      org_id;
      revision;
      service_account;
      sharedflow_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_sharedflow_deployment __resource);
  ()
