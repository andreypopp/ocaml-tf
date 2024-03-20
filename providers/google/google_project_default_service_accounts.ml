(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_project_default_service_accounts = {
  action : string prop;
      (** The action to be performed in the default service accounts. Valid values are: DEPRIVILEGE, DELETE, DISABLE.
				Note that DEPRIVILEGE action will ignore the REVERT configuration in the restore_policy. *)
  id : string prop option; [@option]  (** id *)
  project : string prop;
      (** The project ID where service accounts are created. *)
  restore_policy : string prop option; [@option]
      (** The action to be performed in the default service accounts on the resource destroy.
				Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_project_default_service_accounts *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let google_project_default_service_accounts ?id ?restore_policy
    ?timeouts ~action ~project () :
    google_project_default_service_accounts =
  { action; id; project; restore_policy; timeouts }

type t = {
  action : string prop;
  id : string prop;
  project : string prop;
  restore_policy : string prop;
  service_accounts : (string * string) list prop;
}

let make ?id ?restore_policy ?timeouts ~action ~project __id =
  let __type = "google_project_default_service_accounts" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       restore_policy = Prop.computed __type __id "restore_policy";
       service_accounts =
         Prop.computed __type __id "service_accounts";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_default_service_accounts
        (google_project_default_service_accounts ?id ?restore_policy
           ?timeouts ~action ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?restore_policy ?timeouts ~action
    ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ?restore_policy ?timeouts ~action ~project __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
