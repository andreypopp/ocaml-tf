(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_folder_organization_policy__boolean_policy = {
  enforced : bool;
      (** If true, then the Policy is enforced. If false, then any configuration is acceptable. *)
}
[@@deriving yojson_of]
(** A boolean policy is a constraint that is either enforced or not. *)

type google_folder_organization_policy__list_policy__allow = {
  all : bool option; [@option]
      (** The policy allows or denies all values. *)
  values : string list option; [@option]
      (** The policy can define specific values that are allowed or denied. *)
}
[@@deriving yojson_of]
(** One or the other must be set. *)

type google_folder_organization_policy__list_policy__deny = {
  all : bool option; [@option]
      (** The policy allows or denies all values. *)
  values : string list option; [@option]
      (** The policy can define specific values that are allowed or denied. *)
}
[@@deriving yojson_of]
(** One or the other must be set. *)

type google_folder_organization_policy__list_policy = {
  inherit_from_parent : bool option; [@option]
      (** If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy. *)
  suggested_value : string option; [@option]
      (** The Google Cloud Console will try to default to a configuration that matches the value specified in this field. *)
  allow : google_folder_organization_policy__list_policy__allow list;
  deny : google_folder_organization_policy__list_policy__deny list;
}
[@@deriving yojson_of]
(** A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values.  *)

type google_folder_organization_policy__restore_policy = {
  default : bool;
      (** May only be set to true. If set, then the default Policy is restored. *)
}
[@@deriving yojson_of]
(** A restore policy is a constraint to restore the default policy. *)

type google_folder_organization_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_folder_organization_policy__timeouts *)

type google_folder_organization_policy = {
  constraint_ : string; [@key "constraint"]
      (** The name of the Constraint the Policy is configuring, for example, serviceuser.services. *)
  folder : string;
      (** The resource name of the folder to set the policy for. Its format is folders/{folder_id}. *)
  id : string option; [@option]  (** id *)
  version : float option; [@option]
      (** Version of the Policy. Default version is 0. *)
  boolean_policy :
    google_folder_organization_policy__boolean_policy list;
  list_policy : google_folder_organization_policy__list_policy list;
  restore_policy :
    google_folder_organization_policy__restore_policy list;
  timeouts : google_folder_organization_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_folder_organization_policy *)

let google_folder_organization_policy ?id ?version ?timeouts
    ~constraint_ ~folder ~boolean_policy ~list_policy ~restore_policy
    __resource_id =
  let __resource_type = "google_folder_organization_policy" in
  let __resource =
    {
      constraint_;
      folder;
      id;
      version;
      boolean_policy;
      list_policy;
      restore_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_organization_policy __resource);
  ()
