(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_annotations__metadata = {
  name : string;  (** The name of the resource. *)
  namespace : string option; [@option]
      (** The namespace of the resource. *)
}
[@@deriving yojson_of]
(** kubernetes_annotations__metadata *)

type kubernetes_annotations = {
  annotations : (string * string) list option; [@option]
      (** A map of annotations to apply to the resource. *)
  api_version : string;
      (** The apiVersion of the resource to annotate. *)
  field_manager : string option; [@option]
      (** Set the name of the field manager for the specified labels. *)
  force : bool option; [@option]
      (** Force overwriting annotations that were created or edited outside of Terraform. *)
  kind : string;  (** The kind of the resource to annotate. *)
  template_annotations : (string * string) list option; [@option]
      (** A map of annotations to apply to the resource template. *)
  metadata : kubernetes_annotations__metadata list;
}
[@@deriving yojson_of]
(** kubernetes_annotations *)

let kubernetes_annotations ?annotations ?field_manager ?force
    ?template_annotations ~api_version ~kind ~metadata __resource_id
    =
  let __resource_type = "kubernetes_annotations" in
  let __resource =
    {
      annotations;
      api_version;
      field_manager;
      force;
      kind;
      template_annotations;
      metadata;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_annotations __resource);
  ()
