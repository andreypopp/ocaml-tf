(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_service_account = {
  account_id : string prop;
      (** The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created. *)
  create_ignore_already_exists : bool prop option; [@option]
      (** If set to true, skip service account creation if a service account with the same email already exists. *)
  description : string prop option; [@option]
      (** A text description of the service account. Must be less than or equal to 256 UTF-8 bytes. *)
  disabled : bool prop option; [@option]
      (** Whether the service account is disabled. Defaults to false *)
  display_name : string prop option; [@option]
      (** The display name for the service account. Can be updated without creating a new resource. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]
      (** The ID of the project that the service account will be created in. Defaults to the provider project configuration. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_service_account *)

let timeouts ?create () : timeouts = { create }

let google_service_account ?create_ignore_already_exists ?description
    ?disabled ?display_name ?id ?project ?timeouts ~account_id () :
    google_service_account =
  {
    account_id;
    create_ignore_already_exists;
    description;
    disabled;
    display_name;
    id;
    project;
    timeouts;
  }

type t = {
  account_id : string prop;
  create_ignore_already_exists : bool prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  email : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  unique_id : string prop;
}

let make ?create_ignore_already_exists ?description ?disabled
    ?display_name ?id ?project ?timeouts ~account_id __id =
  let __type = "google_service_account" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       create_ignore_already_exists =
         Prop.computed __type __id "create_ignore_already_exists";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account
        (google_service_account ?create_ignore_already_exists
           ?description ?disabled ?display_name ?id ?project
           ?timeouts ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?create_ignore_already_exists ?description
    ?disabled ?display_name ?id ?project ?timeouts ~account_id __id =
  let (r : _ Tf_core.resource) =
    make ?create_ignore_already_exists ?description ?disabled
      ?display_name ?id ?project ?timeouts ~account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
