(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type boolean_policy = {
  enforced : bool prop;
      (** If true, then the Policy is enforced. If false, then any configuration is acceptable. *)
}
[@@deriving yojson_of]
(** A boolean policy is a constraint that is either enforced or not. *)

type list_policy__allow = {
  all : bool prop option; [@option]
      (** The policy allows or denies all values. *)
  values : string prop list option; [@option]
      (** The policy can define specific values that are allowed or denied. *)
}
[@@deriving yojson_of]
(** One or the other must be set. *)

type list_policy__deny = {
  all : bool prop option; [@option]
      (** The policy allows or denies all values. *)
  values : string prop list option; [@option]
      (** The policy can define specific values that are allowed or denied. *)
}
[@@deriving yojson_of]
(** One or the other must be set. *)

type list_policy = {
  inherit_from_parent : bool prop option; [@option]
      (** If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy. *)
  suggested_value : string prop option; [@option]
      (** The Google Cloud Console will try to default to a configuration that matches the value specified in this field. *)
  allow : list_policy__allow list;
  deny : list_policy__deny list;
}
[@@deriving yojson_of]
(** A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values.  *)

type restore_policy = {
  default : bool prop;
      (** May only be set to true. If set, then the default Policy is restored. *)
}
[@@deriving yojson_of]
(** A restore policy is a constraint to restore the default policy. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_folder_organization_policy = {
  constraint_ : string prop; [@key "constraint"]
      (** The name of the Constraint the Policy is configuring, for example, serviceuser.services. *)
  folder : string prop;
      (** The resource name of the folder to set the policy for. Its format is folders/{folder_id}. *)
  id : string prop option; [@option]  (** id *)
  version : float prop option; [@option]
      (** Version of the Policy. Default version is 0. *)
  boolean_policy : boolean_policy list;
  list_policy : list_policy list;
  restore_policy : restore_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_folder_organization_policy *)

let boolean_policy ~enforced () : boolean_policy = { enforced }

let list_policy__allow ?all ?values () : list_policy__allow =
  { all; values }

let list_policy__deny ?all ?values () : list_policy__deny =
  { all; values }

let list_policy ?inherit_from_parent ?suggested_value ~allow ~deny ()
    : list_policy =
  { inherit_from_parent; suggested_value; allow; deny }

let restore_policy ~default () : restore_policy = { default }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_folder_organization_policy ?id ?version ?timeouts
    ~constraint_ ~folder ~boolean_policy ~list_policy ~restore_policy
    () : google_folder_organization_policy =
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

type t = {
  constraint_ : string prop;
  etag : string prop;
  folder : string prop;
  id : string prop;
  update_time : string prop;
  version : float prop;
}

let register ?tf_module ?id ?version ?timeouts ~constraint_ ~folder
    ~boolean_policy ~list_policy ~restore_policy __resource_id =
  let __resource_type = "google_folder_organization_policy" in
  let __resource =
    google_folder_organization_policy ?id ?version ?timeouts
      ~constraint_ ~folder ~boolean_policy ~list_policy
      ~restore_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_organization_policy __resource);
  let __resource_attributes =
    ({
       constraint_ =
         Prop.computed __resource_type __resource_id "constraint";
       etag = Prop.computed __resource_type __resource_id "etag";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
