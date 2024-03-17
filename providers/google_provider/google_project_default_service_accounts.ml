(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_default_service_accounts__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** google_project_default_service_accounts__timeouts *)

type google_project_default_service_accounts = {
  action : string;
      (** The action to be performed in the default service accounts. Valid values are: DEPRIVILEGE, DELETE, DISABLE.
				Note that DEPRIVILEGE action will ignore the REVERT configuration in the restore_policy. *)
  id : string option; [@option]  (** id *)
  project : string;
      (** The project ID where service accounts are created. *)
  restore_policy : string option; [@option]
      (** The action to be performed in the default service accounts on the resource destroy.
				Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE. *)
  timeouts : google_project_default_service_accounts__timeouts option;
}
[@@deriving yojson_of]
(** google_project_default_service_accounts *)

let google_project_default_service_accounts ?id ?restore_policy
    ?timeouts ~action ~project __resource_id =
  let __resource_type = "google_project_default_service_accounts" in
  let __resource =
    { action; id; project; restore_policy; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_default_service_accounts __resource);
  ()
