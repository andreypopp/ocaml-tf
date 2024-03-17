(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_schedule = {
  definitions : string list;  (** definitions *)
  description : string option; [@option]  (** description *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule *)

let aws_redshift_snapshot_schedule ?description ?force_destroy ?tags
    ~definitions __resource_id =
  let __resource_type = "aws_redshift_snapshot_schedule" in
  let __resource =
    { definitions; description; force_destroy; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_schedule __resource);
  ()
