(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_manifest__field_manager = {
  force_conflicts : bool option; [@option]
      (** Force changes against conflicts. *)
  name : string option; [@option]
      (** The name to use for the field manager when creating and updating the resource. *)
}
[@@deriving yojson_of]
(** Configure field manager options. *)

type kubernetes_manifest__timeouts = {
  create : string option; [@option]
      (** Timeout for the create operation. *)
  delete : string option; [@option]
      (** Timeout for the delete operation. *)
  update : string option; [@option]
      (** Timeout for the update operation. *)
}
[@@deriving yojson_of]
(** kubernetes_manifest__timeouts *)

type kubernetes_manifest__wait__condition = {
  status : string option; [@option]  (** The condition status. *)
  type_ : string option; [@option] [@key "type"]
      (** The type of condition. *)
}
[@@deriving yojson_of]
(** kubernetes_manifest__wait__condition *)

type kubernetes_manifest__wait = {
  fields : (string * string) list option; [@option]
      (** A map of paths to fields to wait for a specific field value. *)
  rollout : bool option; [@option]
      (** Wait for rollout to complete on resources that support `kubectl rollout status`. *)
  condition : kubernetes_manifest__wait__condition list;
}
[@@deriving yojson_of]
(** Configure waiter options. *)

type kubernetes_manifest__wait_for = {
  fields : (string * string) list;  (** fields *)
}
[@@deriving yojson_of]

type kubernetes_manifest = {
  computed_fields : string list option; [@option]
      (** List of manifest fields whose values can be altered by the API server during 'apply'. Defaults to: [metadata.annotations, metadata.labels] *)
  manifest : string;
      (** A Kubernetes manifest describing the desired state of the resource in HCL format. *)
  wait_for : kubernetes_manifest__wait_for option; [@option]
      (** A map of attribute paths and desired patterns to be matched. After each apply the provider will wait for all attributes listed here to reach a value that matches the desired pattern. *)
  field_manager : kubernetes_manifest__field_manager list;
  timeouts : kubernetes_manifest__timeouts list;
  wait : kubernetes_manifest__wait list;
}
[@@deriving yojson_of]
(** kubernetes_manifest *)

let kubernetes_manifest ?computed_fields ?wait_for ~manifest
    ~field_manager ~timeouts ~wait __resource_id =
  let __resource_type = "kubernetes_manifest" in
  let __resource =
    {
      computed_fields;
      manifest;
      wait_for;
      field_manager;
      timeouts;
      wait;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_manifest __resource);
  ()
