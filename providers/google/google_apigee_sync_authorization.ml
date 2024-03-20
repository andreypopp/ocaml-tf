(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_sync_authorization = {
  id : string prop option; [@option]  (** id *)
  identities : string prop list;
      (** Array of service accounts to grant access to control plane resources, each specified using the following format: 'serviceAccount:service-account-name'.

The 'service-account-name' is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com

You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.

The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts). *)
  name : string prop;  (** Name of the Apigee organization. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sync_authorization *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_sync_authorization ?id ?timeouts ~identities ~name
    () : google_apigee_sync_authorization =
  { id; identities; name; timeouts }

type t = {
  etag : string prop;
  id : string prop;
  identities : string list prop;
  name : string prop;
}

let make ?id ?timeouts ~identities ~name __id =
  let __type = "google_apigee_sync_authorization" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       identities = Prop.computed __type __id "identities";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_sync_authorization
        (google_apigee_sync_authorization ?id ?timeouts ~identities
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~identities ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~identities ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
