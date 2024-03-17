(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vertex_ai_tensorboard__encryption_spec = {
  kms_key_name : string;
      (** The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key. *)

type google_vertex_ai_tensorboard__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_tensorboard__timeouts *)

type google_vertex_ai_tensorboard = {
  description : string option; [@option]
      (** Description of this Tensorboard. *)
  display_name : string;
      (** User provided name of this Tensorboard. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your Tensorboards.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  encryption_spec :
    google_vertex_ai_tensorboard__encryption_spec list;
  timeouts : google_vertex_ai_tensorboard__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_tensorboard *)

let google_vertex_ai_tensorboard ?description ?labels ?timeouts
    ~display_name ~encryption_spec __resource_id =
  let __resource_type = "google_vertex_ai_tensorboard" in
  let __resource =
    { description; display_name; labels; encryption_spec; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_tensorboard __resource);
  ()
