(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_sharedflow_deployment = {
  environment : string prop;
      (** The resource ID of the environment. *)
  id : string prop option; [@option]  (** id *)
  org_id : string prop;
      (** The Apigee Organization associated with the Apigee instance *)
  revision : string prop;
      (** Revision of the Sharedflow to be deployed. *)
  service_account : string prop option; [@option]
      (** The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com. *)
  sharedflow_id : string prop;
      (** Id of the Sharedflow to be deployed. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sharedflow_deployment *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_sharedflow_deployment ?id ?service_account
    ?timeouts ~environment ~org_id ~revision ~sharedflow_id () :
    google_apigee_sharedflow_deployment =
  {
    environment;
    id;
    org_id;
    revision;
    service_account;
    sharedflow_id;
    timeouts;
  }

type t = {
  environment : string prop;
  id : string prop;
  org_id : string prop;
  revision : string prop;
  service_account : string prop;
  sharedflow_id : string prop;
}

let register ?tf_module ?id ?service_account ?timeouts ~environment
    ~org_id ~revision ~sharedflow_id __resource_id =
  let __resource_type = "google_apigee_sharedflow_deployment" in
  let __resource =
    google_apigee_sharedflow_deployment ?id ?service_account
      ?timeouts ~environment ~org_id ~revision ~sharedflow_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_sharedflow_deployment __resource);
  let __resource_attributes =
    ({
       environment =
         Prop.computed __resource_type __resource_id "environment";
       id = Prop.computed __resource_type __resource_id "id";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       revision =
         Prop.computed __resource_type __resource_id "revision";
       service_account =
         Prop.computed __resource_type __resource_id
           "service_account";
       sharedflow_id =
         Prop.computed __resource_type __resource_id "sharedflow_id";
     }
      : t)
  in
  __resource_attributes
