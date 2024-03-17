(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_tracker = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  position_filtering : string prop option; [@option]
      (** position_filtering *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tracker_name : string prop;  (** tracker_name *)
}
[@@deriving yojson_of]
(** aws_location_tracker *)

let aws_location_tracker ?description ?id ?kms_key_id
    ?position_filtering ?tags ?tags_all ~tracker_name __resource_id =
  let __resource_type = "aws_location_tracker" in
  let __resource =
    {
      description;
      id;
      kms_key_id;
      position_filtering;
      tags;
      tags_all;
      tracker_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_tracker __resource);
  ()
