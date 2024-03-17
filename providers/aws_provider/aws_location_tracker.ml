(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_location_tracker = {
  description : string option; [@option]  (** description *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  position_filtering : string option; [@option]
      (** position_filtering *)
  tags : (string * string) list option; [@option]  (** tags *)
  tracker_name : string;  (** tracker_name *)
}
[@@deriving yojson_of]
(** aws_location_tracker *)

let aws_location_tracker ?description ?kms_key_id ?position_filtering
    ?tags ~tracker_name __resource_id =
  let __resource_type = "aws_location_tracker" in
  let __resource =
    {
      description;
      kms_key_id;
      position_filtering;
      tags;
      tracker_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_tracker __resource);
  ()
