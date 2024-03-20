(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_project = {
  auto_create_network : bool prop option; [@option]
      (** Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily. *)
  billing_account : string prop option; [@option]
      (** The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have Billing Account Administrator privileges (roles/billing.admin) in the organization. See Google Cloud Billing API Access Control for more details. *)
  folder_id : string prop option; [@option]
      (** The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to the project.
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** The display name of the project. *)
  org_id : string prop option; [@option]
      (** The numeric ID of the organization this project belongs to. Changing this forces a new project to be created.  Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization. *)
  project_id : string prop;
      (** The project ID. Changing this forces a new project to be created. *)
  skip_delete : bool prop option; [@option]
      (** If true, the Terraform resource can be deleted without deleting the Project via the Google API. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_project *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_project ?auto_create_network ?billing_account ?folder_id
    ?id ?labels ?org_id ?skip_delete ?timeouts ~name ~project_id () :
    google_project =
  {
    auto_create_network;
    billing_account;
    folder_id;
    id;
    labels;
    name;
    org_id;
    project_id;
    skip_delete;
    timeouts;
  }

type t = {
  auto_create_network : bool prop;
  billing_account : string prop;
  effective_labels : (string * string) list prop;
  folder_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  number : string prop;
  org_id : string prop;
  project_id : string prop;
  skip_delete : bool prop;
  terraform_labels : (string * string) list prop;
}

let make ?auto_create_network ?billing_account ?folder_id ?id ?labels
    ?org_id ?skip_delete ?timeouts ~name ~project_id __id =
  let __type = "google_project" in
  let __attrs =
    ({
       auto_create_network =
         Prop.computed __type __id "auto_create_network";
       billing_account = Prop.computed __type __id "billing_account";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       number = Prop.computed __type __id "number";
       org_id = Prop.computed __type __id "org_id";
       project_id = Prop.computed __type __id "project_id";
       skip_delete = Prop.computed __type __id "skip_delete";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project
        (google_project ?auto_create_network ?billing_account
           ?folder_id ?id ?labels ?org_id ?skip_delete ?timeouts
           ~name ~project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create_network ?billing_account
    ?folder_id ?id ?labels ?org_id ?skip_delete ?timeouts ~name
    ~project_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create_network ?billing_account ?folder_id ?id ?labels
      ?org_id ?skip_delete ?timeouts ~name ~project_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
