(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?restore_policy ?timeouts ~action
    ~project __resource_id =
  let __resource_type = "google_project_default_service_accounts" in
  let __resource =
    google_project_default_service_accounts ?id ?restore_policy
      ?timeouts ~action ~project ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_default_service_accounts __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       restore_policy =
         Prop.computed __resource_type __resource_id "restore_policy";
       service_accounts =
         Prop.computed __resource_type __resource_id
           "service_accounts";
     }
      : t)
  in
  __resource_attributes
