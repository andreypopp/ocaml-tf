(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_config_map_v1_data__metadata = {
  name : string;  (** The name of the ConfigMap. *)
  namespace : string option; [@option]
      (** The namespace of the ConfigMap. *)
}
[@@deriving yojson_of]
(** kubernetes_config_map_v1_data__metadata *)

type kubernetes_config_map_v1_data = {
  data : (string * string) list;
      (** The data we want to add to the ConfigMap. *)
  field_manager : string option; [@option]
      (** Set the name of the field manager for the specified labels. *)
  force : bool option; [@option]
      (** Force overwriting data that is managed outside of Terraform. *)
  metadata : kubernetes_config_map_v1_data__metadata list;
}
[@@deriving yojson_of]
(** kubernetes_config_map_v1_data *)

let kubernetes_config_map_v1_data ?field_manager ?force ~data
    ~metadata __resource_id =
  let __resource_type = "kubernetes_config_map_v1_data" in
  let __resource = { data; field_manager; force; metadata } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_config_map_v1_data __resource);
  ()
