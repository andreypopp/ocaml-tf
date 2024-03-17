(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter = {
  description : string option; [@option]  (** description *)
  network_services : string list option; [@option]
      (** network_services *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter *)

let aws_ec2_traffic_mirror_filter ?description ?network_services
    ?tags __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_filter" in
  let __resource = { description; network_services; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_filter __resource);
  ()
