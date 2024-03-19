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

type google_firebase_app_check_service_config = {
  enforcement_mode : string prop option; [@option]
      (** The App Check enforcement mode for a service supported by App Check. Valid values are

(Unset)
Firebase App Check is not enforced for the service, nor are App Check metrics collected.
Though the service is not protected by App Check in this mode, other applicable protections,
such as user authorization, are still enforced. An unconfigured service is in this mode by default.
This is equivalent to OFF in the REST API. Deleting the Terraform resource will also switch the
enforcement to OFF for this service.

UNENFORCED
Firebase App Check is not enforced for the service. App Check metrics are collected to help you
decide when to turn on enforcement for the service. Though the service is not protected by App Check
in this mode, other applicable protections, such as user authorization, are still enforced.

ENFORCED
Firebase App Check is enforced for the service. The service will reject any request that attempts to
access your project's resources if it does not have valid App Check token attached, with some exceptions
depending on the service; for example, some services will still allow requests bearing the developer's
privileged service account credentials without an App Check token. App Check metrics continue to be
collected to help you detect issues with your App Check integration and monitor the composition of your
callers. While the service is protected by App Check, other applicable protections, such as user
authorization, continue to be enforced at the same time.

Use caution when choosing to enforce App Check on a Firebase service. If your users have not updated
to an App Check capable version of your app, their apps will no longer be able to use your Firebase
services that are enforcing App Check. App Check metrics can help you decide whether to enforce App
Check on your Firebase services.

If your app has not launched yet, you should enable enforcement immediately, since there are no outdated
clients in use. Possible values: [UNENFORCED, ENFORCED] *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service_id : string prop;
      (** The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  firebasestorage.googleapis.com (Cloud Storage for Firebase)
  firebasedatabase.googleapis.com (Firebase Realtime Database)
  firestore.googleapis.com (Cloud Firestore)
  identitytoolkit.googleapis.com (Authentication) *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_service_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firebase_app_check_service_config ?enforcement_mode ?id
    ?project ?timeouts ~service_id () :
    google_firebase_app_check_service_config =
  { enforcement_mode; id; project; service_id; timeouts }

type t = {
  enforcement_mode : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
}

let register ?tf_module ?enforcement_mode ?id ?project ?timeouts
    ~service_id __resource_id =
  let __resource_type = "google_firebase_app_check_service_config" in
  let __resource =
    google_firebase_app_check_service_config ?enforcement_mode ?id
      ?project ?timeouts ~service_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_service_config __resource);
  let __resource_attributes =
    ({
       enforcement_mode =
         Prop.computed __resource_type __resource_id
           "enforcement_mode";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       service_id =
         Prop.computed __resource_type __resource_id "service_id";
     }
      : t)
  in
  __resource_attributes
