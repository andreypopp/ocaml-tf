(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_schedule = {
  definitions : string prop list;  (** definitions *)
  description : string prop option; [@option]  (** description *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule *)

let aws_redshift_snapshot_schedule ?description ?force_destroy ?id
    ?identifier ?identifier_prefix ?tags ?tags_all ~definitions
    __resource_id =
  let __resource_type = "aws_redshift_snapshot_schedule" in
  let __resource =
    {
      definitions;
      description;
      force_destroy;
      id;
      identifier;
      identifier_prefix;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_schedule __resource);
  ()
